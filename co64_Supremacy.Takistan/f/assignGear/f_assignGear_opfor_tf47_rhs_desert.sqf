// F3 - Folk ARPS Assign Gear Script - OPFOR TF47 Desert Loadout
// adapted by TF47 Dev Team
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		cfr 		- combat first responder
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		dm			- designated marksman
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "";	// IR Laser
_attach2 = "";	// Flashlight

_silencer1 = "rhs_acc_tgpa";	// 5.45 suppressor
_silencer2 = "rhs_acc_pbs1";	// 7.62 suppressor

_scope1 = "";						// Ironsight
_scope2 = "rhs_acc_1p63";			// CCO
_scope3 = "rhs_acc_1p29";			// MRCO Scope - 1x - 6x
_scope4 = "rhs_acc_pso1m2";			// SOS Scope - 18x - 75x

_bipod1 = "rhs_bipod";		// Default bipod
_bipod2 = "rhs_bipod";		// Black bipod

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_L";	// 9mm suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "rhs_weap_ak74m_desert";
_riflemag = "rhs_30Rnd_545x39_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_green";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "rhs_weap_ak74m_desert";
_carbinemag = "rhs_30Rnd_545x39_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_green";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "rhs_weap_ak74m_desert_folded";
_smgmag = "rhs_30Rnd_545x39_AK";
_smgmag_tr = "rhs_30Rnd_545x39_AK_green";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "rhs_weap_ak74m_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_green";
_glmag = "rhs_VOG25";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "rhs_GRD40_White";
_glsmokegreen = "rhs_GRD40_Green";
_glsmokered = "rhs_GRD40_Red";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "rhs_VG40OP_white";
_glflarered = "rhs_VG40OP_red";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "rhs_VG40OP_green";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "rhs_weap_pya";
_pistolmag = "rhs_mag_9x19_17";

// Grenades
_grenade = "rhs_mag_rgd5";
_Mgrenade = "MiniGrenade";
_smokegrenade = "rhs_mag_rdg2_white";
_smokegrenadegreen = "rhs_mag_nspn_green";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "ACE_NVG_Gen1";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_FieldPack_khk";				// carries 120, weighs 20
_bagmedium = "B_FieldPack_khk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_khk"; 				// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";			// used by divers
_baguav = "O_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "O_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "O_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "O_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "O_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "O_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "O_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "rhs_weap_pkm";
_ARmag = "rhs_100Rnd_762x54mmR";
_ARmag_tr = "rhs_100Rnd_762x54mmR_green";

// Medium MG
_MMG = "rhs_weap_pkp";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// NON-DLC ALTERNATIVE:	
//_MMG = "LMG_Zafir_F";
//_MMGmag = ""150Rnd_762x54_Box"";
//_MMGmag_tr = "150Rnd_762x54_Box_Tracer";

// Marksman rifle
_DMrifle = "rhs_weap_svdp_camo";
_DMriflemag = "rhs_10Rnd_762x54mmR_7N1";

// ASP1-KIR
// _DMrifle = "srifle_DMR_04_F";
// _DMriflemag = "10Rnd_127x54_Mag";

// Rifleman AT
_RAT = "rhs_weap_rpg26";
_RATmag = "";

// Medium AT
_MAT = "rhs_weap_rpg7_pgo";
_MATmag1 = "rhs_rpg7_PG7VR_mag";
_MATmag2 = "rhs_rpg7_OG7V_mag";

// Surface Air
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy AT
_HAT = "rhs_weap_rpg7_pgo";
_HATmag1 = "rhs_rpg7_PG7VR_mag";
_HATmag2 = "rhs_rpg7_OG7V_mag";

// Sniper
_SNrifle = "rhs_weap_svdp";
_SNrifleMag = "rhs_10Rnd_762x54mmR_7N1";

// Engineer items
_ATmine = "rhs_mine_tm62m_mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "rhs_mine_pmn2_mag";
_APmine2 = "";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit

// Woodland-Hex
_baseUniform = ["rhs_uniform_mflora_patchless"];
_baseHelmet = ["rhs_6b27m_ml"];
_baseGlasses = [];

// Urban
//_baseUniform = ["U_O_CombatUniform_oucamo"];
//_baseHelmet = ["H_HelmetO_oucamo"];

// Vests
_lightRig = ["rhs_6b23_ML_6sh92_headset"];
_mediumRig = ["rhs_6b23_ML_6sh92_headset"]; 	// default for all infantry classes
_heavyRig = _mediumRig;

// Diver
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["rhs_uniform_df15"];
_pilotHelmet = ["rhs_6b27m_ml"];
_pilotRig = ["rhs_6b23_digi"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["rhs_uniform_mflora_patchless"];
_crewHelmet = ["H_HelmetCrew_O"];
_crewRig = ["rhs_6sh46"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; //DLC alternatives: ["U_O_FullGhillie_lsh","U_O_FullGhillie_ard","U_O_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["rhs_6sh46"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["rhs_uniform_mflora_patchless"];
_sfhelmet = ["H_HelmetSpecO_ocamo","H_HelmetSpecO_blk"];
_sfRig = ["rhs_6sh46"];
_sfGlasses = [];


// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;			// Add and equip the faction's nvg
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	_unit addItemToUniform "ACE_MapTools"; // Add Map Tools
	_unit addItemToVest "ACE_Flashlight_KSF1"; // Add Maglite
	_unit addItemToVest "ACE_IR_Strobe_Item"; // Add IR Strobe
	//_unit linkItem "ItemGPS"; 	// Add and equip a GPS

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_opfor_tf47_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		{ _unit addItemToVest _glriflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _glriflemag_tr; } forEach [1, 2];
		{ _unit addItemToVest _glmag; } forEach [1, 2, 3];
		{ _unit addItemToVest _glsmokewhite; } forEach [1, 2, 3, 4];
		_unit addweapon _glrifle;					//_COrifle
		{ _unit addItemToVest _pistolmag; } forEach [1, 2];
		_unit addweapon _pistol;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenadegreen; } forEach [1, 2];
		_attachments = [_attach1,_scope2];
		_unit addWeapon "rhs_pdu4";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		{ _unit addItemToVest _glriflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _glriflemag_tr; } forEach [1, 2];
		{ _unit addItemToVest _glmag; } forEach [1, 2, 3];
		{ _unit addItemToVest _glsmokewhite; } forEach [1, 2, 3, 4];
		_unit addweapon _glrifle;					//_COrifle
		{ _unit addItemToVest _pistolmag; } forEach [1, 2];
		_unit addweapon _pistol;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenadegreen; } forEach [1, 2];
		_attachments = [_attach1,_scope2];
		_unit addWeapon "rhs_pdu4";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};

// LOADOUT: MEDIC
	case "m":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		_unit addweapon _carbine;
		{_unit addItemToVest _smokegrenade; } forEach[1,2,3,4];
		_attachments = [_attach1,_scope2];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		{ _unit addItemToVest _pistolmag; } forEach [1, 2];
		_unit addweapon _pistol;
		_unit linkItem "ItemGPS";
		["m"] call _backpack;
	};

// LOADOUT: COMBAT FIRST RESPONDER
	case "cfr":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		_unit linkItem "ItemGPS";
		["cfr"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
		{
		{ _unit addItemToVest _glriflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _glriflemag_tr; } forEach [1, 2];
		{ _unit addItemToVest _glmag; } forEach [1, 2, 3];
		{ _unit addItemToVest _glsmokewhite; } forEach [1, 2, 3, 4];
		_unit addweapon _glrifle;					//_COrifle
		{ _unit addItemToVest _pistolmag; } forEach [1, 2];
		_unit addweapon _pistol;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenadegreen; } forEach [1, 2];
		_attachments = [_attach1,_scope2];
		_unit addWeapon "rhs_pdu4";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		{ _unit addItemToVest _ARmag; } forEach [1, 2];
		_unit addweapon _AR;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		{ _unit addItemToVest _pistolmag; } forEach [1, 2, 3, 4];
		_unit addweapon _pistol;
		["ar"] call _backpack;
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		{ _unit addItemToVest _riflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _riflemag_tr; } forEach [1, 2];
		_unit addweapon _rifle;
		{ _unit addItemToVest _grenade; } forEach [1, 2];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit addWeapon "Binocular";
		["aar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		["rat"] call _backpack;
		_unit addweapon _RAT;
	};

// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
	{
		{ _unit addItemToVest _DMriflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		_unit addweapon _DMrifle;
		{ _unit addItemToVest _grenade; } forEach [1, 2];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		{ _unit addItemToVest _pistolmag; } forEach [1, 2, 3];
		_unit addweapon _pistol;
		["dm"] call _backpack;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		{ _unit addItemToVest _MMGmag; } forEach [1];
		_unit addweapon _MMG;
		{ _unit addItemToVest _MMGmag; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		{ _unit addItemToVest _pistolmag; } forEach [1, 2, 3, 4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
		_attachments pushback (_bipod1);
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		{ _unit addItemToVest _riflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _riflemag_tr; } forEach [1, 2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
	        { _unit addItemToVest _grenade; } forEach [1, 2];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		["mmgag"] call _backpack;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		["hmgg"] call _backpack;
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		_unit addWeapon "Binocular";
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		["hmgag"] call _backpack;
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		_unit addWeapon "Binocular";
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		["matag"] call _backpack;
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		_unit addweapon _carbine;
		["hatg"] call _backpack;
		_unit addWeapon _HAT;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		_unit addWeapon "Binocular";
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		["hatag"] call _backpack;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		["mtrg"] call _backpack;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		_unit addWeapon "rhs_pdu4";
		["mtrag"] call _backpack;
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		["msamg"] call _backpack;
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		_unit addweapon _SAM;
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		_unit addWeapon "rhs_pdu4";
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		["msamag"] call _backpack;
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		["hsamg"] call _backpack;
	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		_unit addWeapon "rhs_pdu4";
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1];
		["hsamag"] call _backpack;
	};


// LOADOUT: SNIPER
	case "sn":
	{
		{ _unit addItemToVest _SNrifleMag; } forEach [1, 2, 3, 4, 5, 6, 7, 8, 9];
		_unit addweapon _SNrifle;
		{ _unit addItemToVest _pistolmag; } forEach [1, 2, 3, 4];
		_unit addweapon _pistol;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_attachments = [_scope3,_bipod2];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		{ _unit addItemToVest _glriflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _glriflemag_tr; } forEach [1, 2];
		{ _unit addItemToVest _glmag; } forEach [1, 2];
		{ _unit addItemToVest _glsmokewhite; } forEach [1, 2];
		_unit addweapon _glrifle;					//_COrifle
		{ _unit addItemToVest _pistolmag; } forEach [1, 2];
		_unit addweapon _pistol;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit addWeapon "rhs_pdu4";
		_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4, 5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit linkItem "ItemGPS";
		_unit addWeapon "Binocular";
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit linkItem "ItemGPS";
		["cc"] call _backpack;
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit linkItem "ItemGPS";
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit linkItem "ItemGPS";
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		["cc"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4,5];
		_unit addweapon _smg;
		{ _unit addItemToVest _grenade; } forEach [1];
		{ _unit addItemToVest _mgrenade; } forEach [1];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
	};

// LOADOUT: Diver
	case "div":
	{
		{ _unit addItemToVest _diverMag1; } forEach [1, 2, 3, 4];
		{ _unit addItemToVest _diverMag2; } forEach [1, 2, 3];
		_unit addweapon _diverWep;
		{ _unit addItemToVest _grenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2, 3];
		_attachments = [_attach1,_scope1,_silencer1];
		["div"] call _backpack;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		{ _unit addItemToVest _riflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _riflemag_tr; } forEach [1, 2];
		_unit addweapon _rifle;
		{ _unit addItemToVest _grenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2, 3];
		["r"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		{ _unit addItemToVest _carbinemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _carbinemag_tr; } forEach [1, 2];
		_unit addweapon _carbine;
		{ _unit addItemToVest _grenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2, 3];
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{ _unit addItemToVest _smgmag; } forEach [1, 2, 3, 4, 5, 6, 7];
		_unit addweapon _smg;
		{ _unit addItemToVest _grenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2, 3];
		["smg"] call _backpack;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		{ _unit addItemToVest _glriflemag; } forEach [1, 2, 3, 4, 5, 6, 7];
		{ _unit addItemToVest _glriflemag_tr; } forEach [1, 2];
		_unit addweapon _glrifle;
		{ _unit addItemToVest _glmag; } forEach [1, 2, 3, 4, 5, 6];
		{ _unit addItemToVest _glsmokewhite; } forEach [1, 2];
		{ _unit addItemToVest _grenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _mgrenade; } forEach [1, 2, 3];
		{ _unit addItemToVest _smokegrenade; } forEach [1, 2];
		["g"] call _backpack;
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_firstaid,8];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,6];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addMagazineCargoGlobal [_glflarewhite, 4];
		_unit addMagazineCargoGlobal [_glflarered, 3];
		_unit addMagazineCargoGlobal [_glflaregreen, 3];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_mgrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addItemCargoGlobal [_firstaid, 6];
};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 15];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_armag, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite,16];
	    _unit addMagazineCargoGlobal [_glflarewhite, 12];
		_unit addMagazineCargoGlobal [_glflarered, 9];
		_unit addMagazineCargoGlobal [_glflaregreen, 9];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 25];
		_unit addMagazineCargoGlobal [_mgrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 6];
		_unit addItemCargoGlobal [_firstaid, 25];
};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 45];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_armag, 45];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_glsmokewhite,50];
		_unit addMagazineCargoGlobal [_glflarewhite, 36];
		_unit addMagazineCargoGlobal [_glflarered, 27];
		_unit addMagazineCargoGlobal [_glflaregreen, 27];
		_unit addMagazineCargoGlobal [_ratmag, 20];
		_unit addMagazineCargoGlobal [_grenade, 75];
		_unit addMagazineCargoGlobal [_mgrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addItemCargoGlobal [_firstaid, 75];
};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_opfor_tf47_desert.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================
// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	switch(f_var_medical) do
		{
				
		case 1: // ACE 3 Basic Medic System
			{
				[_unit] execVM "f\medical\ACEbasic_converter.sqf";
			};
			
		case 2: // ACE 3 Advanced Medic System
			{
				[_unit] execVM "f\medical\ACEadvanced_converter.sqf";
			};
		};
	};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;


