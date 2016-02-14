_thislist = _this select 0;

{
	_unit = _x;
	["r",_unit] call f_fnc_assignGear;

} forEach _thislist;