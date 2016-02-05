_actionId = _this select 2;
_veh = (_this select 3) select 0;	

_drv = driver _veh;

if (_veh == _drv) then {
	_drv groupChat "Das kannst du nur in einem Fahrzeug machen - This can only be done inside a vehicle.";

} else { if (_veh getVariable ["vehServiceActive", false]) then {
	// already being serviced	
	_veh vehicleChat "Dieses Fahrzeug wird bereits gewartet - This Vehicle is already being serviced.";	
	
} else {	

	_veh setVariable ["vehServiceActive", true, true];
	_veh vehicleChat "Das Fahrzeug wird repariert - This Vehicle is being repaired...";

	_fuel = fuel _veh;
	_veh setVehicleInit "this setFuel 0;";
	processInitCommands;
	waitUntil {sleep 1; (fuel _veh) == 0};

	_dmg = getDammage _veh;	
	_dmgPart = _dmg / 10;
	_repairTime = 30 * _dmg;

	if(!isMultiplayer) then {
		_repairTime = _repairTime / 10;
	};

	// Initiate Repairs

	{
		sleep _repairTime;			
		_dmg = _dmg - _dmgPart;
		_veh setVehicleInit format["this setDamage %1;", _dmg];
		processInitCommands;		
		_veh vehicleChat format["Das Fahrzeug wird repariert - This Vehicle is being repaired... (%1%2)", _x, "%"];
	} forEach [10,20,30,40,50,60,70,80,90];

	sleep _repairTime;	
	_veh vehicleChat format["Das Fahrzeug wird repariert - This Vehicle is being repaired... (%1%2)", 100, "%"];	
	_veh setVehicleInit format["this setDamage %1;", 0];
	processInitCommands;		
	_veh setVehicleInit format["this setFuel %1;", _fuel];
	processInitCommands;

	_veh vehicleChat "Reparatur vollstaendig abgeschlossen! - All Repairs done!";
	_veh setVariable ["vehServiceActive", false, true];
			
}; };