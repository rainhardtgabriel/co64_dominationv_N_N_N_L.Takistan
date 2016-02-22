/*
Author: 

	Lucke

Last modified: 

	14/02/2016

Description:

	
	
Notes:
	
	
______________________________________________*/

private ["_objects","_sandstorm"];
params ["_objects",["_sandstorm", false]];

{
	if (alive _x) then {
		deleteVehicle _x;
	};
} forEach _objects;

if (_sandstorm) then {
	trig_sandstorm setpos [0,0,0];
};

"side_mkr1" setmarkerpos [0,0,0];