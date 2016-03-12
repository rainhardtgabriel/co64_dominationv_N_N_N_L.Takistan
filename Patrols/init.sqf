/*
Author: 

	Lucke

Last modified: 

	23/02/2016

Description:

	[] execVM "Patrols\init.sqf";
	
Notes:
	
	
______________________________________________*/
if(!isServer) exitwith {};
private ["_amount","_typs","_temp"];
params [["_amount", 10],["_typs",[["inf", 1, 10],["wheeld", 2, 20],["tracked", 4, 30]]]];

Patrols = [];
PatrolMarkers = [] call tf47_fnc_getPatrolMarkers;

while {_amount != 0 AND (count Patrols) != 5 } do {
	_temp = _typs call BIS_fnc_selectRandom;
	if (_temp select 1 <= _amount) then {
	  	_amount = _amount - (_temp select 1);
	  	[_temp select 0, _temp select 2] call tf47_fnc_createPatrol;	  	
	};
};