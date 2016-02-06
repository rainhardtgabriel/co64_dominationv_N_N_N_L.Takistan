_veh = _this select 0;
_veh setVariable ["loadoutName", "Infantry Loadout", true];
//Clear Cargo
clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;	

//Weapons
_veh addWeaponCargoGlobal ["CUP_arifle_M4A1_black",2];
_veh addWeaponCargoGlobal ["CUP_arifle_M16A4_Base",1];
_veh addWeaponCargoGlobal ["CUP_arifle_M16A4_GL",1];

//Ammo
_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
_veh addMagazineCargoGlobal ["CUP_1Rnd_HE_M203",12];
_veh addMagazineCargoGlobal ["CUP_1Rnd_Smoke_M203",8];
_veh addMagazineCargoGlobal ["CUP_1Rnd_SmokeGreen_M203",8];
_veh addMagazineCargoGlobal ["CUP_1Rnd_SmokeRed_M203",4];

//Medic
_veh addItemCargoGlobal ["ACE_fieldDressing",10];
_veh addItemCargoGlobal ["ACE_packingBandage",10];
_veh addItemCargoGlobal ["ACE_elasticBandage",10];
_veh addItemCargoGlobal ["ACE_salineIV_500",4];
_veh addItemCargoGlobal ["ACE_tourniquet", 4];
_veh addItemCargoGlobal ["ACE_morphine",5];
_veh addItemCargoGlobal ["ACE_epinephrine",5];

//Grenades
_veh addMagazineCargoGlobal ["SmokeShell",8];
_veh addMagazineCargoGlobal ["SmokeShellGreen",3];
_veh addMagazineCargoGlobal ["SmokeShellRed",3];
_veh addMagazineCargoGlobal ["SmokeShellBLue",2];

//Attachments
_veh addItemCargoGlobal ["CUP_optic_HoloBlack",2];
_veh addItemCargoGlobal ["CUP_optic_ACOG",2];
_veh addItemCargoGlobal ["CUP_muzzle_snds_M16",4];
_veh addItemCargoGlobal ["CUP_acc_ANPEQ_2",4];


_veh addItemCargoGlobal ["ItemRadio",2];
_veh addItemCargoGlobal ["ACE_Flashlight_XL50",4];

_veh addWeaponCargoGlobal ["tf47_at4_heat",3];

_veh addWeaponCargoGlobal ["CUP_lmg_M249_para",1];
_veh addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4];

_veh addItemCargoGlobal ["NVGoggles",4];
_veh addWeaponCargoGlobal ["ACE_Vector",1];
_veh addItemCargoGlobal ["B_UavTerminal",1];