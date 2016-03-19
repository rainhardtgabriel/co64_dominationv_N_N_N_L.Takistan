/*
@filename: clearItems.sqf
Description:
	Clear items from the base area.

    \param 0: List of Markers, type must be "Empty". Typically a circle shall be used. Size of this marke determines the area to clean
    \param 1: Time betwee clean cylcles.
    \param 2: Optional. Clean once. If this parameter is set true the clean script will only run one time. 

    hint: Only object ins "weaponholder" without attribute "isDecoration" will be cleaned. 

*/

#define TIME_BETWEEN_TWO_CLEAN_AREAS 5
private ["_listOfMarker","_repeatTime","_clear","_rad","_markerPosition","_markerSize","_allMarkersValid","_listOfCleanPlaces","_repeatOnce"];
_listOfMarker = param [0];  // list of Strings with marker names
_repeatTime = param [1];    // time between the two clean cyles
_repeatOnce = param [2, false ]; // optional: set this value true in case you would like to start cleaning only once


_listOfCleanPlaces = [];
_allMarkersValid = true;
{
    //check if marker exsist. I found no better solution.
    if ("Empty" != (getMarkerType _x)) exitwith {
        _allMarkersValid = false;
    };
    
    _markerSize = getMarkerSize _x;
    _rad = ((_markerSize select 0) max (_markerSize select 1));
    _markerPosition = getMarkerPos _x;
    _listOfCleanPlaces pushBack [_markerPosition, _rad];    //Example: List of clean places [[position1, radius1], [position2, radius2],...]

    deleteMarker _x;
}foreach _listOfMarker;

if ((_allMarkersValid)&&(count _listOfMarker > 0)) then {
    diag_log format["fn_cleanMarkedPosition: _listOfCleanPlaces -> %1 ", _listOfCleanPlaces];
    private _cleanStopCondition = true;
	while {_cleanStopCondition} do {
        {
	        _clear = nearestObjects [(_x select 0) ,["weaponholder"],(_x select 1)];	
            diag_log format["fn_cleanMarkedPosition: run at position=%1, radius=%2 ",(_x select 0), (_x select 1)];        
	        {
                private _isDecoration = _x getVariable "isDecoration";               
                if (isNil "_isDecoration") then {
	               deleteVehicle _x;
                };
	            sleep 0.01;
	        }foreach _clear;

            sleep TIME_BETWEEN_TWO_CLEAN_AREAS;
        }foreach _listOfCleanPlaces;
	    
	    sleep _repeatTime;
        if (_repeatOnce) then {_cleanStopCondition = false};
	};
} else {
    diag_log format["fn_cleanMarkedPosition: Error Wrong marker type or _listOfMarker is empty -> %1 ", _listOfMarker];
};
diag_log format["fn_cleanMarkedPosition: End"]
