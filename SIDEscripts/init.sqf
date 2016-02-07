private ["_objarray","_init"];

_init = this select 0;

_objarray = [];

if (_init) then {
	{
	  _x = createVehicle ["",[0,0,0],[],0,"NONE"];
	  deleteVehicle _x;
	} forEach _objarray;
}
else {
	{
		if (alive _x) then {
			deleteVehicle _x;
		};
	} forEach _objarray;
};
