/*
Author: 

	Lucke

Last modified: 

	23/02/2016

Description:

	[[<Objects>],bool] call tf47_fnc_cleanside
	
Notes:
	
	
______________________________________________*/

private ["_objects","_sandstorm"];
params ["_objects",["_sandstorm", false]];

if (_sandstorm) then {
	trig_sandstorm setpos [0,0,0];
};

"side_mkr1" setmarkerpos [0,0,0];
sleep 30;
{
	if !(_x == objNull) then {
		deleteVehicle _x;
	};
} forEach _objects;