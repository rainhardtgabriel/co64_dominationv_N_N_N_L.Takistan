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
//Injectors
_veh addWeaponCargoGlobal ["ACE_morphine",10];
_veh addWeaponCargoGlobal ["ACE_atropine",10];
_veh addWeaponCargoGlobal ["ACE_epinephrine",10];


_veh addMagazineCargoGlobal ["SmokeShell",20];
_veh addMagazineCargoGlobal ["SmokeShellGreen",10];
_veh addMagazineCargoGlobal ["SmokeShellRed",10];
_veh addMagazineCargoGlobal ["SmokeShellBLue",5];

_veh addWeaponCargoGlobal ["ACRE_PRC117F",1];
