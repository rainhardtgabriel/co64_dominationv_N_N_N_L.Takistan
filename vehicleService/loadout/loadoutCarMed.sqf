_veh = _this select 0;	
_veh setVariable ["loadoutName", "Medical Loadout", true];
//Clear Cargo
clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;	

//Medic
_veh addWeaponCargoGlobal ["ACE_fieldDressing",15];
_veh addWeaponCargoGlobal ["ACE_elasticBandage",15];
_veh addWeaponCargoGlobal ["ACE_quikclot",15];
_veh addWeaponCargoGlobal ["ACE_tourniquet",8];
_veh addWeaponCargoGlobal ["ACE_personalAidKit",10];
_veh addWeaponCargoGlobal ["ACE_packingBandage",15];
_veh addWeaponCargoGlobal ["ACE_bloodIV",15];
_veh addWeaponCargoGlobal ["ACE_plasmaIV",15];
_veh addWeaponCargoGlobal ["ACE_salineIV",15];
_veh addWeaponCargoGlobal ["ACE_bloodIV_500",15];
_veh addWeaponCargoGlobal ["ACE_plasmaIV_500",15];
_veh addWeaponCargoGlobal ["ACE_salineIV_500",15];
_veh addWeaponCargoGlobal ["ACE_bloodIV_250",15];
_veh addWeaponCargoGlobal ["ACE_plasmaIV_250",15];
_veh addWeaponCargoGlobal ["ACE_salineIV_250",15];
//Injectors
_veh addWeaponCargoGlobal ["ACE_morphine",10];
_veh addWeaponCargoGlobal ["ACE_atropine",10];
_veh addWeaponCargoGlobal ["ACE_epinephrine",10];


_veh addMagazineCargoGlobal ["SmokeShell",20];
_veh addMagazineCargoGlobal ["SmokeShellGreen",10];
_veh addMagazineCargoGlobal ["SmokeShellRed",10];
_veh addMagazineCargoGlobal ["SmokeShellBLue",5];

// Radios
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


