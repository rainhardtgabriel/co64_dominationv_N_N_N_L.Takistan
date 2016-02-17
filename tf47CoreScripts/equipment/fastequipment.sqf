private ["_unit","_loadout"];
_unit = _this select 1;
f_var_JIP_state = 2;
if (f_var_JIP_GearMenu) then {
	["JIP",["Select your gear kit."]] call BIS_fnc_showNotification;

	createDialog "KitPicker";
	waitUntil {f_var_JIP_state == 3};

	_loadout = (_unit getVariable "f_var_JIP_loadout");
	[_loadout,_unit] call f_fnc_assignGear;
};