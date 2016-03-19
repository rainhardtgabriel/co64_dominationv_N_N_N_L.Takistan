_veh = _this select 0;	
_veh setVariable ["loadoutName", "Mortar Loadout", true];
//Clear Cargo
clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;	

//Grenades
_veh addMagazineCargoGlobal ["SmokeShell",3];
_veh addMagazineCargoGlobal ["SmokeShellGreen",3];
_veh addMagazineCargoGlobal ["SmokeShellRed",3];
_veh addMagazineCargoGlobal ["SmokeShellBLue",3];
_veh addMagazineCargoGlobal ["HandGrenade_West",5];

//Items
_veh addMagazineCargoGlobal ["NVGoggles",5];
_veh addWeaponCargoGlobal ["ACE_EarPlugs",5];
_veh addWeaponCargoGlobal ["ACE_MapTools",5];
_veh addWeaponCargoGlobal ["ACE_RangeTable_82mm",2];
_veh addWeaponCargoGlobal ["ACE_microDAGR",3];
_veh addWeaponCargoGlobal ["ACE_RangeCard",3];
_veh addWeaponCargoGlobal ["ACE_Vector",3];

//Mortar
_veh addBackpackCargoGlobal ["B_Mortar_01_weapon_F",1];
_veh addBackpackCargoGlobal ["B_Mortar_01_support_F",1];

// Weapons + Ammo
switch (tf47_param_vehiclemod) do { 
	// Vanilla
	case 0 : { 
		_veh addWeaponCargoGlobal ["arifle_MX_F",2
		_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag",30];];
	}; 
	// CUP
	case 1 : { 
		_veh addWeaponCargoGlobal ["CUP_arifle_M4A1_black",2];
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
	}; 
};

// Radio
switch (f_var_radios) do {
	// ACRE 2
	case 1: {
		_veh addWeaponCargoGlobal ["ACRE_PRC117F",1];
	};
	// TFR
	case 2: {
		_veh addWeaponCargoGlobal ["tf_rt1523g",1];
	};
};