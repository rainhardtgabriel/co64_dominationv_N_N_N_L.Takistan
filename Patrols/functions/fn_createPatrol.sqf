/*
Author: 

	Lucke

Last modified: 

	23/02/2016

Description:

	[_temp select 0, _temp select 2] call tf47_fnc_createPatrol;
	
Notes:
	
	
______________________________________________*/
private["_typ","_timer","_start","_end","_startpos","_endpos","_veh","_temp","_startdir","_group"];
params["_typ","_timer"];

_temp = [];
_start = PatrolMarkers call BIS_fnc_selectRandom;
PatrolMarkers = PatrolMarkers - [_start];
_end = PatrolMarkers call BIS_fnc_selectRandom;
PatrolMarkers = PatrolMarkers - [_end];
_startpos = getMarkerPos _start;
_endpos = getMarkerPos _end;
_startdir = markerDir _start;
_group = createGroup east;

switch (_typ) do { 
	case "inf" : {
	_veh = ["CUP_O_UAZ_MG_TKA", "CUP_O_UAZ_Unarmed_TKA", "CUP_O_LR_Transport_TKA", "CUP_O_UAZ_MG_TKA"];
	}; 
	case "wheeld" : {
	_veh = ["CUP_O_BRDM2_ATGM_TKA", "CUP_O_BTR60_TK", "CUP_O_BRDM2_TKA"];
	}; 
	case "tracked" : {
	_veh = ["CUP_O_BMP2_TKA", "CUP_O_BMP2_ZU_TKA", "CUP_O_BMP2_TKA"];
	};
	default {}; 
};

{
	_temp = _temp + [createVehicle[_x,_startpos,[],0,"CAN_COLLIDE"]];
	_startpos = _startpos getPos[10, _startdir + 180];
} forEach _veh;

{
	_x setDir _startdir;
	createVehicleCrew _x;
	crew _x join _group;
} forEach _temp;

_group setBehaviour "CARELESS";
_group setCombatMode "YELLOW";
_group setSpeedMode "NORMAL";
//_group move _endpos;
[_group, _endpos] execVM "Patrols\delayedwaypoint.sqf";

Patrols = Patrols + [[_typ,_timer,_group, _temp, _start, _end]];