_veh = _this select 0;	
_veh setVariable ["loadoutName", "Combined Operations Loadout", true];
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
_veh addMagazineCargoGlobal ["NVGoggles",4];
_veh addWeaponCargoGlobal ["ACE_EarPlugs",10];

//Medic
_veh addWeaponCargoGlobal ["ACE_fieldDressing",10];
_veh addWeaponCargoGlobal ["ACE_elasticBandage",7];
_veh addWeaponCargoGlobal ["ACE_quikclot",10];
_veh addWeaponCargoGlobal ["ACE_tourniquet",3];
_veh addWeaponCargoGlobal ["ACE_personalAidKit",2];
_veh addWeaponCargoGlobal ["ACE_packingBandage",15];
//Injectors
_veh addWeaponCargoGlobal ["ACE_morphine",10];
_veh addWeaponCargoGlobal ["ACE_atropine",10];
_veh addWeaponCargoGlobal ["ACE_epinephrine",10];

// Weapons + Ammo
switch (tf47_param_vehiclemod) do { 
	// Vanilla
	case 0 : { 
		// Weapons
		_veh addWeaponCargoGlobal ["arifle_MX_F",2];
		_veh addWeaponCargoGlobal ["arifle_MXC_F",1];
		_veh addWeaponCargoGlobal ["arifle_MX_GL_F",1];
		
		// Ammo
		_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag",30];
		_veh addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell",10];
		
		// Launcher
		_veh addWeaponCargoGlobal ["launch_B_Titan_F",1];  
		_veh addWeaponCargoGlobal ["launch_B_Titan_short_F", 1]; 
		_veh addWeaponCargoGlobal ["launch_NLAW_F",3];
		
		// Launcher Ammo
		_veh addMagazineCargoGlobal ["Titan_AT",2];
		_veh addMagazineCargoGlobal ["Titan_AP",2];
		_veh addMagazineCargoGlobal ["Titan_AA",1];    
		
	}; 
	// CUP
	case 1 : { 
		// Weapons
		_veh addWeaponCargoGlobal ["CUP_arifle_M4A1_black",2];
		_veh addWeaponCargoGlobal ["CUP_arifle_M16A4_Base",1];
		_veh addWeaponCargoGlobal ["CUP_arifle_M16A4_GL",1];

		// Ammo
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
		_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];
	
		// Launcher
		_veh addWeaponCargoGlobal ["CUP_launch_FIM92Stinger",1];
		_veh addWeaponCargoGlobal ["CUP_Javelin", 1]; 
		_veh addWeaponCargoGlobal ["tf47_m3maaws",1];
		_veh addWeaponCargoGlobal ["tf47_at4_heat",1];

		// Launcher Ammo
		_veh addMagazineCargoGlobal ["CUP_Javelin_M",2];
		_veh addMagazineCargoGlobal ["CUP_Stinger_M",1];
		_veh addMagazineCargoGlobal ["tf47_m3maaws_HE",1];
		_veh addMagazineCargoGlobal ["tf47_m3maaws_HEAT",1];
	}; 
};


// Radios
switch (f_var_radios) do {
	// ACRE 2
	case 1: {
		_veh addWeaponCargoGlobal ["ACRE_PRC343",3];
		_veh addWeaponCargoGlobal ["ACRE_PRC152",3];
		_veh addWeaponCargoGlobal ["ACRE_PRC117F",1];
	};
	// TFR
	case 2: {
		_veh addWeaponCargoGlobal ["tf_rt1523g",1];
		_veh addWeaponCargoGlobal ["tf_anprc152",6];
	};
};
