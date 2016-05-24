/*
Author:

	Lucke

Last modified:

	12/03/2016

Description:

	[] call tf47_fnc_checkPatrols;

Notes:


______________________________________________*/

//_group
#define PATROLS_GROUPHANDLE 0
//_convoy
#define PATROLS_LIST_OF_CONVOY_VEHICLES 1
//_inf
#define PATROLS_LIST_OF_CONVOY_INFANTRY_UNITS 2
//_start
#define PATROLS_START_MARKER 3
//_end
#define PATROLS_END_MARKER 4

// check for every patrol
{
	// clean up patrols
    [((_x select PATROLS_LIST_OF_CONVOY_INFANTRY_UNITS) -  units (_x select PATROLS_GROUPHANDLE))] call CBA_fnc_deleteEntity;
    _respawn = true;
    {
        if !(alive _x) then {
            [_x] call CBA_fnc_deleteEntity;
        };
    } forEach units (_x select PATROLS_GROUPHANDLE) + (_x select PATROLS_LIST_OF_CONVOY_VEHICLES);

    {
        if (speed _x < 3) then {
            sleep 10;
            if (speed _x < 3) then {
                [(crew _x) , _x] call CBA_fnc_deleteEntity;
            };
        };
    } forEach (_x select PATROLS_LIST_OF_CONVOY_VEHICLES);

    {
        if !(isNull _x) then {
            _respawn = false;
        };
    } forEach (_x select PATROLS_LIST_OF_CONVOY_VEHICLES);

    if (_respawn) then {
        [(_x select PATROLS_LIST_OF_CONVOY_INFANTRY_UNITS), (_x select PATROLS_LIST_OF_CONVOY_VEHICLES)] call CBA_fnc_deleteEntity;
        Patrols deleteAt _forEachIndex;
        [] execVM "Patrols\delayedcreatePatrol.sqf";
    };
} forEach Patrols;
