	private ["_object","_type","_pos_x","_pos_y","_pos_z"];
	_object = _this select 0;
	_type = _this select 1;
	_pos_x = getPos _object select 0;
	_pos_y = getPos _object select 1;
	_pos_z = getPos _object select 2;

if (isNil{_type}) then {} else {

    //prevent cleaning from cleanup script 
    _object setVariable ["isDecoration", true , true];

	switch (_type) do { 
			case "chair" : {
					[_object,false] call ace_dragging_fnc_setCarryable; 
			}; 
			case "guard" : {
	waitUntil {	_object getVariable ["f_var_assignGear_done", true];};
					_object addAction ["<t color='#990000'>Please equip me fast!</t>","[player] execVM 'tf47CoreScripts\equipment\fastequipment.sqf';",nil,1,true,false];
				    _object disableAI "MOVE";
				    _object disableAI "COVER";
				    _object disableAI "AUTOTARGET";
				    _object setUnitPos "up";
				    _object allowDamage false;
				    removeBackpack _object;
				    removeAllWeapons _object;
			};
			case "box" : {
					_object setVariable ["ace_cargo_size", -1];
					_object allowDamage false;
			};
			case "table" : { 	
					arsenal = [_object] execVM "tf47CoreScripts\equipment\arsenal.sqf";
					_object allowDamage false;
					_object enableSimulationGlobal false;
			};
			case "table_x" : {
					_object setPos [_pos_x,_pos_y,_pos_z+0.88];
					_object allowDamage false;
					_object enableSimulationGlobal false;
			};
			case "levelphone" : {
					_object setPos [_pos_x,_pos_y,_pos_z+0.86];
					_object allowDamage false;
					_object enableSimulationGlobal false;
			};
			case "levelat" : {
					_object setPos [_pos_x,_pos_y,_pos_z+0.93];
					_object allowDamage false;
					_object enableSimulationGlobal false;
			};
			case "leveldrone" : {
					_object setPos [_pos_x,_pos_y,_pos_z+0.84];
					_object allowDamage false;
					_object enableSimulationGlobal false;
			};
			case "rifle" : {
					_object setPos [_pos_x,_pos_y,_pos_z+0.88];
					_object allowDamage false;
					_object setVectorDirAndUp [[0,1,0],[0,1,.33]];
					_object enableSimulationGlobal false;
			};
			case "tent" : {
					_object allowDamage false;
					_object enableSimulationGlobal false;
			};
			default { _object enableSimulationGlobal false;}; 
		};
	};