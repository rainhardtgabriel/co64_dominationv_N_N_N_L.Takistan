_veh = _this select 0;
_veh setVariable ["loadoutName", "Infantry Loadout", true];

_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
_veh addMagazineCargoGlobal ["1Rnd_HE_M203",12];

_veh addMagazineCargoGlobal ["SmokeShell",10];
_veh addMagazineCargoGlobal ["SmokeShellGreen",3];
_veh addMagazineCargoGlobal ["SmokeShellRed",3];
_veh addMagazineCargoGlobal ["SmokeShellBLue",2];

_veh addWeaponCargoGlobal ["NVGoggles",4];
