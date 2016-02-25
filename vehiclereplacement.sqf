private ["_mkrname","_mkrpos","_mkrdir","_mkrtext","_veh","_smallmobiles","_quad","_bike","_traktor","_unarmedcars","_hmmwv_transport","_landrovertransport","_hmmwv_m2","_hmmwv_mk19","_hmmwv_tow","_hmmwv_avenger","_hmmwv_mk19_crows","_rg31_m2,""_dingo_m2","_dingo_gl","_landrover_gb","_dingo_cz","_jackal2_gmg","_jackal2_l2a1","__refuel","_reammo","_repair","_transport","_rhino01","_rhino02","_lion01","_lion02","_frog01","_tiger01","_tiger02","_tiger03","_gator01","_gator02","_butterfly01","_butterfly02","_firefly","_manticore","_griffin","_raven01","_raven02","_dustoff","_pelican","_goose","_albatros","_wasp01","_wasp02","_thunderbird"];
/*if (isServer) then {
waitUntil {!isNil "tf47_param_vehiclemod"};
 switch (tf47_param_vehiclemod) do { 
	case 0 : { #include "functions\vehicleReplacement\vanillaVehicles.sqf" }; 
	case 1 : { #include "functions\vehicleReplacement\CUPVehicles.sqf" }; 
};
*/

#include "functions\vehicleReplacement\vanillaVehicles.sqf"

for "_i" from 0 to 99 do {
	test = true;
	_mkrname = format ["mkr_spawn_veh_%1",_i];
	_mkrpos = getMarkerPos _mkrname;
	_mkrdir = markerDir _mkrname;
	_mkrtext = markerText _mkrname;
	switch (_mkrtext) do  {
		case "_quad" : {
			_veh = [_mkrpos,_mkrdir,_quad] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 60, 1200, "", "mil_dot", "ColorBlue", WEST, "", 1] execVM "tf47CoreScripts\vehicleRespawn.sqf"; 
			_veh setVariable ["R3F_LOG_disabled", true];
		};
		case "_bike" :  {
			_veh = [_mkrpos,_mkrdir,_bike] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 60, 1200, "", "mil_dot", "ColorBlue", WEST, "", 1] execVM "tf47CoreScripts\vehicleRespawn.sqf"; 
			_veh setVariable ["R3F_LOG_disabled", true];
		};
		case "_tractor" : {
			_veh = [_mkrpos,_mkrdir,_tractor] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 60, 1200, "", "mil_dot", "ColorBlue", WEST, "", 1] execVM "tf47CoreScripts\vehicleRespawn.sqf"; 
			_veh setVariable ["R3F_LOG_disabled", true];
		};
		case "_hmmwv_transport" : {
			_veh = [_mkrpos,_mkrdir,_hmmwv_transport] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 5] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_hmmwv_avenger" : {
			_veh = [_mkrpos,_mkrdir,_hmmwv_avenger] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_hmmwv_tow" : {
			_veh = [_mkrpos,_mkrdir,_hmmwv_tow] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_hmmwv_mk19" : {
			_veh = [_mkrpos,_mkrdir,_hmmwv_mk19] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_hmmwv_m2" : {
			_veh = [_mkrpos,_mkrdir,_hmmwv_m2] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_hmmwv_mk19_crows" : {
			_veh = [_mkrpos,_mkrdir,_hmmwv_mk19_crows] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_rg31_m2" : {
			_veh = [_mkrpos,_mkrdir,_rg31_m2] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_landrover_cz" : {
			_veh = [_mkrpos,_mkrdir,_landrover_cz] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_landrover_gb" : {
			_veh = [_mkrpos,_mkrdir,_landrover_gb] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_dingo_gl" : {
			_veh = [_mkrpos,_mkrdir,_dingo_gl] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_dingo_m2" : {
			_veh = [_mkrpos,_mkrdir,_dingo_m2] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_landrover_transport" : {
			_veh = [_mkrpos,_mkrdir,_landrover_transport] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnvehspawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 5] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_jackal2_l2a1" : {
			_veh = [_mkrpos,_mkrdir,_jackal2_l2a1] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_jackal2_gmg" : {
			_veh = [_mkrpos,_mkrdir,_jackal2_gmg] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_refuel" : {
			_veh = [_mkrpos,_mkrdir,_refuel] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 7200, "Fuel", "mil_dot", "ColorBlue", WEST, "", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_reammo" : {
			_veh = [_mkrpos,_mkrdir,_reammo] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 7200, "Reammo", "mil_dot", "ColorBlue", WEST, "", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_repair" : {
			_veh = [_mkrpos,_mkrdir,_repair] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 7200, "Repair", "mil_dot", "ColorBlue", WEST, "", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_transport" : {
			_veh = [_mkrpos,_mkrdir,_transport] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 7200, "Transport", "mil_dot", "ColorBlue", WEST, "", 8] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_rhino01" : {
			_veh = [_mkrpos,_mkrdir,_rhino01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 3600, 0, "RHINO-01", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_rhino02" : {
			_veh = [_mkrpos,_mkrdir,_rhino02] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 3600, 0, "RHINO-02", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_lion01": {
			_veh = [_mkrpos,_mkrdir,_lion01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 3600, 0, "LION-01", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_lion02" : {
			_veh = [_mkrpos,_mkrdir,_lion02] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 3600, 0, "LION-02", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_frog01" : {
			_veh = [_mkrpos,_mkrdir,_frog01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 3600, 0, "FROG-01", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_tiger01" : 		{
			_veh = [_mkrpos,_mkrdir,_tiger01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "TIGER-01", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_tiger02" :		{
			_veh = [_mkrpos,_mkrdir,_tiger02] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "TIGER-02", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_tiger03" : 		{
			_veh = [_mkrpos,_mkrdir,_tiger03] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "TIGER-03", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_gator01" : 		{
			_veh = [_mkrpos,_mkrdir,_gator01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "GATOR-01", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_gator02" : 		{
			_veh = [_mkrpos,_mkrdir,_gator02] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "GATOR-02", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";
		};
		case "_butterfly01" : 	{
			_veh = [_mkrpos,_mkrdir,_butterfly01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 1800, 0, "BUTTERFLY-01", "b_air", "ColorBrown", WEST, "rottrans", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "BUTTERFLY-01", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_butterfly02" : 	{
			_veh = [_mkrpos,_mkrdir,_butterfly02] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 1800, 0, "BUTTERFLY-02", "b_air", "ColorBrown", WEST, "rottrans", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "BUTTERFLY-02", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_firefly" : 		{
			_veh = [_mkrpos,_mkrdir,_firefly] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "FIREFLY", "b_air", "ColorOrange", WEST, "rotatk", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "FIREFLY", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_manticore" : 	{
			_veh = [_mkrpos,_mkrdir,_manticore] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "MANTICORE", "b_air", "ColorOrange", WEST, "rotatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "MANTICORE", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_griffin" : 		{
			_veh = [_mkrpos,_mkrdir,_griffin] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "GRIFFIN", "b_air", "ColorBrown", WEST, "rottrans", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "GRIFFIN", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_raven01" : 		{
			_veh = [_mkrpos,_mkrdir,_raven01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "RAVEN-01", "b_air", "ColorBrown", WEST, "rottrans", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "RAVEN-01", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_raven02" : 		{
			_veh = [_mkrpos,_mkrdir,_raven02] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "RAVEN-02", "b_air", "ColorBrown", WEST, "rottrans", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "RAVEN-02", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_dustoff" : 		{
			_veh = [_mkrpos,_mkrdir,_dustoff] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "DUSTOFF", "b_air", "ColorRed", WEST, "rottrans", 30] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "DUSTOFF", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_pelican" : 		{
			_veh = [_mkrpos,_mkrdir,_pelican] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 3600, 0, "PELICAN", "b_air", "ColorBrown", WEST, "rottrans", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "PLECAN", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_goose" : 		{
			_veh = [_mkrpos,_mkrdir,_goose] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "GOOSE", "b_air", "ColorBrown", WEST, "rottrans", 30] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "GOOSE", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_albatros" : 		{
			_veh = [_mkrpos,_mkrdir,_albatros] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "ALBATROS", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "ALBATROS", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_wasp01" : 		{
			_veh = [_mkrpos,_mkrdir,_wasp01] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "WASP-01", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "WASP-01", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_wasp02" : 		{
			_veh = [_mkrpos,_mkrdir,_wasp02] call TF47_VehicleReplacement_fnc_replaceVehicle; 
			spawnveh = [_veh, 2700, 0, "WASP-02", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "WASP-02", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		case "_thunderbird" :	{
			_veh = [_mkrpos,_mkrdir,_thunderbird] call TF47_VehicleReplacement_fnc_replaceVehicle;
			spawnveh = [_veh, 2700, 0, "THUNDERBIRD", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";
			hNil = [_veh, "THUNDERBIRD", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";
		};
		default { 
		hint format ["Replacement did not work for Vehicle : %1",_mkrText]; 
		};
	};
};
