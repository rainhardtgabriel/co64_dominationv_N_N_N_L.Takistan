private ["_loadout"];
f_var_JIP_state = 2;
if (f_var_JIP_GearMenu) then {
	["JIP",["Select your gear kit."]] call BIS_fnc_showNotification;

	createDialog "KitPicker";
	waitUntil {f_var_JIP_state == 3};

	_loadout = (player getVariable "f_var_JIP_loadout");
	[_loadout,player] call f_fnc_assignGear;
};