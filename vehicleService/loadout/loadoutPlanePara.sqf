_veh = _this select 0;	
_veh setVariable ["loadoutName", "Paratrooper", true];
//Clear Cargo
clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;	

//Grenades
_veh addMagazineCargoGlobal ["SmokeShell",10];
_veh addMagazineCargoGlobal ["SmokeShellGreen",10];
_veh addMagazineCargoGlobal ["SmokeShellRed",10];
_veh addMagazineCargoGlobal ["SmokeShellBLue",10];

//Items
_veh addWeaponCargoGlobal ["ACE_EarPlugs",10];
_veh addWeaponCargoGlobal ["ACE_MapTools",2];
_veh addWeaponCargoGlobal ["ACE_microDAGR",2];
_veh addWeaponCargoGlobal ["ACE_Altimeter",10];

//Radio
_veh addWeaponCargoGlobal ["ACRE_PRC117F",3];
_veh addWeaponCargoGlobal ["ACRE_PRC343",10];
_veh addWeaponCargoGlobal ["ACRE_PRC152",10];

//Backpack
_veh addBackpackCargoGlobal ["ACE_NonSteerableParachute",10]
_veh addBackpackCargoGlobal ["ACE_ReserveParachute",10]
_veh addBackpackCargoGlobal ["BIS_Steerable_Parachute",10]