// F3 - Folk ARPS Assign Gear Script (Server-side)
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_faction","_typeofUnit","_unit","_west_factionsss","_east_factions","_ind_factions"];

_west_factions = ["blu_f","rhs_faction_usarmy_wd","rhs_faction_usarmy_d","rhs_faction_usaf","rhs_faction_usn","rhs_faction_socom","rhs_faction_usmc_wd","rhs_faction_usmc_d","CUP_B_GB","CUP_B_GER","_CUP,_B_CZ","CUP_B_US","CUP_B_CDF","CUP_B_USMC"];
_east_factions = ["opf_f","rhs_faction_msv","rhs_faction_vdv","rhs_faction_vmf","rhs_faction_vv","rhs_faction_tv","rhs_faction_vpvo","rhs_faction_vvs","rhs_faction_vvs_c","rhs_faction_rva","CUP_O_TK_MILITIA","CUP_O_RU","CUP_O_ChDKZ"];
_ind_factions =  ["ind_f","rhs_faction_insurgents","CUP_I_TK_GUE","CUP_I_NAPA"];
_ind_g_faction = ["blu_g_f","opf_g_f","ind_g_f","CUP_I_PMC_ION","CUP_I_UN"];
_factions_array =[_west_factions,_east_factions,_ind_factions,_ind_g_faction];
// ====================================================================================

// DETECT unit FACTION
// The following code detects what faction the unit's slot belongs to, and stores
// it in the private variable _faction. It can also be passed as an optional parameter.

_typeofUnit = toLower (_this select 0);
_unit = _this select 1;

_faction = toLower (faction _unit);
if(count _this > 2) then
{
  _faction = toLower (_this select 2);
};

// ====================================================================================

// DECIDE IF THE SCRIPT SHOULD RUN
// Depending on locality the script decides if it should run

if !(local _unit) exitWith {};

// ====================================================================================

// SET A PUBLIC VARIABLE
// A public variable is set on the unit, indicating their type. This is mostly relevant for the F3 respawn component

_unit setVariable ["f_var_assignGear",_typeofUnit,true];

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS 2
// Used by the faction-specific scripts

private ["_attach1","_attach2","_silencer1","_silencer2","_scope1","_scope2","_scope3","_scope4","_bipod1","_bipod2","_attachments","_silencer","_hg_silencer1","_hg_scope1","_hg_attachments","_rifle","_riflemag","_riflemag_tr","_carbine","_carbinemag","_carbinemag_tr","_smg","_smgmag","_smgmag_tr","_diverWep","_diverMag1","_diverMag2","_glrifle","_glriflemag","_glriflemag_tr","_glmag","_glsmokewhite","_glsmokegreen","_glsmokered","_glflarewhite","_glflarered","_glflareyellow","_glflaregreen","_pistol","_pistolmag","_grenade","_Mgrenade","_smokegrenade","_smokegrenadegreen","_firstaid","_medkit","_nvg","_uavterminal","_chemgreen","_chemred","_chemyellow","_chemblue","_bagsmall","_bagmedium","_baglarge","_bagmediumdiver","_baguav","_baghmgg","_baghmgag","_baghatg","_baghatag","_bagmtrg","_bagmtrag","_baghsamg","_baghsamag","_AR","_ARmag","_ARmag_tr","_MMG","_MMGmag","_MMGmag_tr","_Tracer","_DMrifle","_DMriflemag","_RAT","_RATmag","_MAT","_MATmag1","_MATmag2","_HAT","_HATmag1","_HATmag2","_SAM","_SAMmag","_SNrifle","_SNrifleMag","_ATmine","_satchel","_APmine1","_APmine2","_light","_heavy","_oalead","_grenftl","_corpsman","_marksman","_machinegunners","_diver","_pilot","_crew","_ghillie","_specOp","_baseUniform","_baseHelmet","_baseGlasses","_lightRig","_mediumRig","_heavyRig","_oalrig","_grenftlrig","_corpsmanrig","_marksmanrig","_machinegunnersrig","_diverUniform","_diverHelmet","_diverRig","_diverGlasses","_pilotUniform","_pilotHelmet","_pilotRig","_pilotGlasses","_crewUniform","_crewHelmet","_crewRig","_crewGlasses","_ghillieUniform","_ghillieHelmet","_ghillieRig","_ghillieGlasses","_sfuniform","_sfhelmet","_sfRig","_sfGlasses","_typeofUnit","_unit","_isMan","_backpack","_typeofBackPack","_loadout","_COrifle","_mgrenade","_DCrifle","_FTLrifle","_armag","_ratmag","_typeofunit"];

// ====================================================================================

// This variable simply tracks the progress of the gear assignation process, for other
// scripts to reference.

_unit setVariable ["f_var_assignGear_done",false,true];

// ====================================================================================

// DEBUG
if (f_var_debugMode == 1) then
{
	_unit sideChat format ["DEBUG (assignGear.sqf): unit faction: %1",_faction];
};

// ====================================================================================

if(_faction in _west_factions) then{

	switch (f_param_uniforms) do {

			case 0: {		//Vanilla Uniforms are used
							// GEAR: BLUFOR > NATO 
							// The following block of code executes only if the unit is in a NATO slot; it
							// automatically includes a file which contains the appropriate equipment data.
						#include "f_assignGear_nato.sqf"
					};

			case 1: {		// RHS Woodland Uniforms are used
							// GEAR: BLUFOR > USMC Woodland
							// The following block of code executes only if the unit is in a NATO slot; it
							// automatically includes a file which contains the appropriate equipment data.
						#include "f_assignGear_nato_tf47_rhs_wood.sqf"
					};

			case 2: {		//RHS Desert Uniforms are used
							// GEAR: BLUFOR > USMC Desert 
							// The following block of code executes only if the unit is in a NATO slot; it
							// automatically includes a file which contains the appropriate equipment data.
						#include "f_assignGear_nato_tf47_rhs_desert.sqf"
					};
			case 3: {		// CUP Woodland Uniforms are used
							// GEAR: BLUFOR > USMC Woodland
							// The following block of code executes only if the unit is in a NATO slot; it
							// automatically includes a file which contains the appropriate equipment data.
						#include "f_assignGear_nato_tf47_cup_wood.sqf"
					};		
	};
};
if (_faction in _east_factions) then {
		switch (f_param_uniforms) do {
			case 0: {	//Vanilla CSAT
							#include "f_assignGear_csat.sqf"
					};
			case 1: {	//RHS WOOD & 3 CB BAF
							#include "f_assignGear_opfor_tf47_rhs_wood.sqf"
					};
			case 2: {	//RHS DESERT & 3CB BAF
							#include "f_assignGear_opfor_tf47_rhs_desert.sqf"
					};
			case 3: {	//CUP WOOD & 3CB BAF
							#include "f_assignGear_opfor_tf47_cup_wood.sqf"
					};
		};
};
if (_faction in _ind_factions) then {
		switch (f_param_uniforms) do {
			case 0: {	//Vanilla  AAF
							#include "f_assignGear_aaf.sqf"	
					};
			case 1: {	//RHS WOOD & 3 CB BAF
							#include "f_assignGear_opfor_tf47_rhs_wood.sqf"
					};
			case 2: {	//RHS DESERT & 3CB BAF
							#include "f_assignGear_opfor_tf47_rhs_desert.sqf"
					};
			case 3: {	//CUP WOOD & 3CB BAF
							#include "f_assignGear_opfor_tf47_cup_wood.sqf"
					};
		};
};
if (_faction in _ind_g_faction) then {
		switch (f_param_uniforms) do {
			case 0: {	// GEAR: FIA
						// The following block of code executes only if the unit is in a FIA slot (any faction); it
						// automatically includes a file which contains the appropriate equipment data.
							#include "f_assignGear_fia.sqf"	
					};
			case 1: {	//RHS Woodland Selected
						// GEAR: British Armed Forces
						// The following block of code executes only if the unit is in a FIA slot (any faction); it
						// automatically includes a file which contains the appropriate equipment data.
							#include "f_assignGear_nato_tf47_3cb_baf_wood.sqf"		
					};
			case 2: {	//RHS Desert Selected
						// GEAR: British Armed Forces
						// The following block of code executes only if the unit is in a FIA slot (any faction); it
						// automatically includes a file which contains the appropriate equipment data.	
							#include "f_assignGear_nato_tf47_3cb_baf_wood.sqf"		
					};
			case 3: {	//CUP Woodland Selected
						// GEAR: British Armed Forces
						// The following block of code executes only if the unit is in a FIA slot (any faction); it
						// automatically includes a file which contains the appropriate equipment data.
							#include "f_assignGear_nato_tf47_3cb_baf_wood.sqf"		
					};
		};
};	

					

// ====================================================================================

// If Unit is Player recalculate Medical Components

if(isPlayer _unit) then {
	[] execVM "f\medical\medical_init.sqf";
} else {};

// This variable simply tracks the progress of the gear assignation process, for other
// scripts to reference.

_unit setVariable ["f_var_assignGear_done",true,true];

// ====================================================================================

// DEBUG

// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

if (isNil "_carbine") then { //_carbine should exist unless no faction has been called
	player globalchat format ["DEBUG (assignGear.sqf): Faction %1 is not defined.",_faction];
} else {
 	if (f_var_debugMode == 1) then	{
		player sideChat format ["DEBUG (assignGear.sqf): Gear for %1: %1 slot selected.",_unit,_faction,_typeofUnit];
	};
};

// ====================================================================================