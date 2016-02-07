private ["_objarray"];

_objarray = _this select 0;

{
	if (alive _x) then {
		deleteVehicle _x;
	};
} forEach _objarray;
