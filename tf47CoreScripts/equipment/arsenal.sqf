private ["_arsenal","_unit","_id","_inventory","_backpacks","_items","_items_no_radio","_radioitems","_magazines","_weapons","_mod_backpacks","_mod_magazines","_mod_weapons","_backpack_radios","_radioitems"];
params ["_arsenal","_unit","_id"];
waitUntil {!isNil "f_param_uniforms" && !isNil "f_var_radios"};
switch (f_param_uniforms) do {
	case 1 : {  
	#include "rhs_arsenal.sqf"
	}; 
	case 2 : {  
	//RHS
	#include "rhs_arsenal.sqf"
	}; 
	case 3 : {  
	#include "cup_arsenal.sqf"
	}; 
	default {  
	#include "vanilla_arsenal.sqf"
	}; 
};
switch (f_var_radios) do {
	case 1 : {  
	#include "acre2.sqf"
	}; 
	case 2 : {  
	#include "t_far.sqf"
	}; 
	default {  
	#include "vanilla_radio.sqf"
	};
};
#include "ace_arsenal.sqf" // include ACE 3 Stuff
//prepare Inventory
_backpacks = _mod_backpacks +_ace_backpacks + _backpack_radios;
_items = _items_no_radio + _ace_items + _radioitems;
_magazines = _mod_magazines + _ace_magazines;
_weapons = _mod_weapons + _ace_weapons;	
_inventory = [_backpacks,_items,_magazines,_weapons];
setup_arsenal = [_arsenal,_inventory,true,true] call Ares_fnc_ArsenalSetup;
