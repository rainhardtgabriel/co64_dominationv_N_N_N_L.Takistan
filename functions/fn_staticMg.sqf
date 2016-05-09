
_ao = position (_this select 0);
hint str _ao;
_staticType = "";
_crew = "";

switch (tf47_param_vehiclemod) do { 
	// Van
	case 0 : {
		_staticType = "I_HMG_01_high_F";
		_crew = "I_soldier_F";
	};
	// CUP
	case 1 : {
		_staticType = "CUP_O_KORD_TK"; 
		_crew = "CUP_O_TK_Soldier";
	};
	// RHS
	case 2 : {
		_staticType = "rhs_DSHKM_ins"; 
		_crew = "rhs_g_Soldier_lite_F";
	};
};

for "_x" from 1 to 3 do {
	_staticGroup = createGroup east;
	_randomPos = [_ao, 200, 10, 10] call BIS_fnc_findOverwatch;
	_static = _staticType createVehicle _randomPos;
	_static setDir random 360;
	_static setVectorUp [0,0,1];
	_static setPos [((getPos _static) select 0),((getPos _static) select 1),((getPos _static) select 2) + 2.5];
	_static setVectorUp [0,0,1];
	_crew createUnit [_randomPos,_staticGroup];
	((units _staticGroup) select 0) assignAsGunner _static;
	((units _staticGroup) select 0) moveInGunner _static;
	_staticGroup setBehaviour "COMBAT";
	_staticGroup setCombatMode "RED";
	_static lock 3;
	_static setVectorUp [0,0,1];
	_static = objNull;
};