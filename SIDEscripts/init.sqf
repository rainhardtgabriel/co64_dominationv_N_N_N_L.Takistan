private ["_objarray","_init"];

_init = _this select 0;

_objarray = [CapVeh1, pilot1, offizier, powertrans, Tent1, Tent2, Tent3, CampFire];

if (_init) then {
	{
	  _x = createVehicle ["",[0,0,0],[],0,"NONE"];
	  deleteVehicle _x;
	} forEach _objarray;
}
else {
	{
		if (alive _x) then {
			deleteVehicle _x;
		};
	} forEach _objarray;
};
