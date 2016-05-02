/*
Author:

	Lucke

Last modified:

	12/03/2016

Description:

	[] call tf47_fnc_checkPatrols;

Notes:


______________________________________________*/
private["_respawn"];
Patrols = Patrols;
{
	[(_x select 4) -  units (_x select 2), 300] execVM "Patrols\delayeddeleteVehicles.sqf";
	_respawn = true;
	{
		if !(alive _x) then {
		 	[[_x], 300] execVM "Patrols\delayeddeleteVehicles.sqf";
		};
	} forEach units (_x select 2) + (_x select 3);

	{
		if (speed _x < 3) then {
			sleep 10;
			if (speed _x < 3) then {
				[(crew _x) + [_x], 0] execVM "Patrols\delayeddeleteVehicles.sqf";
			};
		};
	} forEach (_x select 3);

	{
	 	if !(isNull _x) then {
	 		_respawn = false;
	 	};
	} forEach (_x select 3);

	if (_respawn) then {
		[_x select 4 + (_x select 3), 3] execVM "Patrols\delayeddeleteVehicles.sqf";
		PatrolMarkers = PatrolMarkers + [_x select 5, _x select 6];
		Patrols = Patrols - [_x];
		[_x select 0, _x select 1] execVM "Patrols\delayedcreatePatrol.sqf";
	};
} forEach Patrols;
//[_typ,_timer,_group, _convoy, _inf, _start, _end]
//speed (Patrols select 0 select 2 select 0)
