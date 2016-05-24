/*
Author:

	Lucke

Last modified:

	23/02/2016

Description:

	[] execVM "Patrols\init.sqf";

Notes:


______________________________________________*/
if(!([] call TF47_Helper_fnc_checkForHc)) exitwith {};
private [];

Patrols = [];
PatrolMarkers = [] call tf47_fnc_getPatrolMarkers;

for "_i" from 0 to ([3,7] call BIS_fnc_randomInt) do {
	[] execVM "Patrols\delayedcreatePatrol.sqf";
};


while {true} do {
	sleep 300;
	[] execVM "Patrols\checkPatrols.sqf";
};
