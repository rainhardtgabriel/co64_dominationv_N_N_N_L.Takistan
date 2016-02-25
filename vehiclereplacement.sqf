private ["_mkrname","_mkrpos","_mkrdir","_mkrtext","_veh","_smallmobiles","_quad","_bike","_traktor","_unarmedcars","_hmmwv_transport","_landrovertransport","_hmmwv_m2","_hmmwv_mk19","_hmmwv_tow","_hmmwv_avenger","_hmmwv_mk19_crows","_rg31_m2,""_dingo_m2","_dingo_gl","_landrover_gb","_dingo_cz","_jackal2_gmg","_jackal2_l2a1","__refuel","_reammo","_repair","_transport","_rhino01","_rhino02","_lion01","_lion02","_frog01","_tiger01","_tiger02","_tiger03","_gator01","_gator02","_butterfly01","_butterfly02","_firefly","_manticore","_griffin","_raven01","_raven02","_dustoff","_pelican","_goose","_albatros","_wasp01","_wasp02","_thunderbird"];
if (isServer) then {
waitUntil {!isNil "tf47_param_vehiclemod"};
switch (tf47_param_vehiclemod) do { 
	case 0 : { #include "\functions\vehicleReplacement\vanillaVehicles.sqf" }; 
	case 1 : { #include "\functions\vehicleReplacement\CUPVehicles.sqf" }; 
};

for "_i" from 0 to 99 do {
	_mkrname = format ["mkr_spawn_veh_%1",_i];
	_mkrpos = getMarkerPos _mkrname;
	_mkrdir = markerDir _mkrname;
	_mkrtext = markerText _mkrname;
	switch (_mkrText) do  {
				case "_quad" : 			{veh = [_mkrpos,_mkrdir,_quad] call tf47_fnc_replaceVehice; spawnveh = [_veh, 60, 1200, "", "mil_dot", "ColorBlue", WEST, "", 1] execVM "tf47CoreScripts\vehicleRespawn.sqf"; veh setVariable ["R3F_LOG_disabled", true];};
				case "_bike" : 			{veh = [_mkrpos,_mkrdir,__bike] call tf47_fnc_replaceVehice;spawnveh = [_veh, 60, 1200, "", "mil_dot", "ColorBlue", WEST, "", 1] execVM "tf47CoreScripts\vehicleRespawn.sqf"; veh setVariable ["R3F_LOG_disabled", true];};
				case "_tractor" : 		{veh = [_mkrpos,_mkrdir,_tractor] call tf47_fnc_replaceVehice;spawnveh = [_veh, 60, 1200, "", "mil_dot", "ColorBlue", WEST, "", 1] execVM "tf47CoreScripts\vehicleRespawn.sqf"; veh setVariable ["R3F_LOG_disabled", true];};
				case "_hmmwv_transport" : {veh = [_mkrpos,_mkrdir,_hmmwv_transport] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 5] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_hmmwv_avenger" : {veh = [_mkrpos,_mkrdir,_hmmwv_avenger] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_hmmwv_tow" : 	{veh = [_mkrpos,_mkrdir,_hmmwv_tow] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_hmmwv_mk19" : 	{veh = [_mkrpos,_mkrdir,_hmmwv_mk19] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_hmmwv_m2" : 		{veh = [_mkrpos,_mkrdir,_hmmwv_m2] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_hmmwv_mk19_crows" : {veh = [_mkrpos,_mkrdir,_hmmwv_mk19_crows] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_rg31_m2" : 		{veh = [_mkrpos,_mkrdir,_rg31_m2] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_landrover_cz" : 	{veh = [_mkrpos,_mkrdir,_landrover_cz] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_landrover_gb" : 	{veh = [_mkrpos,_mkrdir,_landrover_gb] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_dingo_gl" : 		{veh = [_mkrpos,_mkrdir,_dingo_gl] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_dingo_m2" : 		{veh = [_mkrpos,_mkrdir,_dingo_m2] call tf47_fnc_replaceVehice;spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_landrover_transport" : {veh = [_mkrpos,_mkrdir,_landrover_transport] call tf47_fnc_replaceVehice;spawnvehspawnveh = [veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 5] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_jackal2_l2a1" : 	{veh = [_mkrpos,_mkrdir,_jackal2_l2a1] call tf47_fnc_replaceVehice; spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_jackal2_gmg" : 	{veh = [_mkrpos,_mkrdir,_jackal2_gmg] call tf47_fnc_replaceVehice; spawnveh = [_veh, 1800, 7200, " ", "mil_dot", "ColorBlue", WEST, "", 10] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_refuel" : 		{veh = [_mkrpos,_mkrdir,_refuel] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 7200, "Fuel", "mil_dot", "ColorBlue", WEST, "", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_reammo" : 		{veh = [_mkrpos,_mkrdir,_reammo] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 7200, "Reammo", "mil_dot", "ColorBlue", WEST, "", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_repair" : 		{veh = [_mkrpos,_mkrdir,_repair] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 7200, "Repair", "mil_dot", "ColorBlue", WEST, "", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";
				case "_transport" : 	{veh = [_mkrpos,_mkrdir,_transport] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 7200, "Transport", "mil_dot", "ColorBlue", WEST, "", 8] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_rhino01" : 		{veh = [_mkrpos,_mkrdir,_rhino01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 3600, 0, "RHINO-01", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_rhino02" : 		{veh = [_mkrpos,_mkrdir,_rhino02] call tf47_fnc_replaceVehice; spawnveh = [_veh, 3600, 0, "RHINO-02", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_lion01": 		{veh = [_mkrpos,_mkrdir,_lion01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 3600, 0, "LION-01", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_lion02" : 		{veh = [_mkrpos,_mkrdir,_lion02] call tf47_fnc_replaceVehice; spawnveh = [_veh, 3600, 0, "LION-02", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_frog01" : 		{veh = [_mkrpos,_mkrdir,_frog01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 3600, 0, "FROG-01", "b_mech_inf", "ColorOrange", WEST, "harmor", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_tiger01" : 		{veh = [_mkrpos,_mkrdir,_tiger01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "TIGER-01", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_tiger02" :		{veh = [_mkrpos,_mkrdir,_tiger02] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "TIGER-02", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_tiger03" : 		{veh = [_mkrpos,_mkrdir,_tiger03] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "TIGER-03", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_gator01" : 		{veh = [_mkrpos,_mkrdir,_gator01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "GATOR-01", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_gator02" : 		{veh = [_mkrpos,_mkrdir,_gator02] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "GATOR-02", "b_mech_inf", "ColorOrange", WEST, "larmor", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";};
				case "_butterfly01" : 	{veh = [_mkrpos,_mkrdir,_butterfly01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 1800, 0, "BUTTERFLY-01", "b_air", "ColorBrown", WEST, "rottrans", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "BUTTERFLY-01", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_butterfly02" : 	{veh = [_mkrpos,_mkrdir,_butterfly02] call tf47_fnc_replaceVehice; spawnveh = [_veh, 1800, 0, "BUTTERFLY-02", "b_air", "ColorBrown", WEST, "rottrans", 15] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "BUTTERFLY-02", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_firefly" : 		{veh = [_mkrpos,_mkrdir,_firefly] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "FIREFLY", "b_air", "ColorOrange", WEST, "rotatk", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "FIREFLY", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_manticore" : 	{veh = [_mkrpos,_mkrdir,_manticore] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "MANTICORE", "b_air", "ColorOrange", WEST, "rotatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "MANTICORE", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_griffin" : 		{veh = [_mkrpos,_mkrdir,_griffin] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "GRIFFIN", "b_air", "ColorBrown", WEST, "rottrans", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "GRIFFIN", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_raven01" : 		{veh = [_mkrpos,_mkrdir,_raven01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "RAVEN-01", "b_air", "ColorBrown", WEST, "rottrans", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "RAVEN-01", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_raven02" : 		{veh = [_mkrpos,_mkrdir,_raven02] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "RAVEN-02", "b_air", "ColorBrown", WEST, "rottrans", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "RAVEN-02", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_dustoff" : 		{veh = [_mkrpos,_mkrdir,_dustoff] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "DUSTOFF", "b_air", "ColorRed", WEST, "rottrans", 30] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "DUSTOFF", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_pelican" : 		{veh = [_mkrpos,_mkrdir,_pelican] call tf47_fnc_replaceVehice; spawnveh = [_veh, 3600, 0, "PELICAN", "b_air", "ColorBrown", WEST, "rottrans", 20] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "PLECAN", "b_air", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_goose" : 		{veh = [_mkrpos,_mkrdir,_goose] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "GOOSE", "b_air", "ColorBrown", WEST, "rottrans", 30] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "GOOSE", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_albatros" : 		{veh = [_mkrpos,_mkrdir,_albatros] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "ALBATROS", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "ALBATROS", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_wasp01" : 		{veh = [_mkrpos,_mkrdir,_wasp01] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "WASP-01", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "WASP-01", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_wasp02" : 		{veh = [_mkrpos,_mkrdir,_wasp02] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "WASP-02", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "WASP-02", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				case "_thunderbird" :	{veh = [_mkrpos,_mkrdir,_thunderbird] call tf47_fnc_replaceVehice; spawnveh = [_veh, 2700, 0, "THUNDERBIRD", "b_plane", "ColorOrange", WEST, "fixatk", 25] execVM "tf47CoreScripts\vehicleRespawn.sqf";hNil = [_veh, "THUNDERBIRD", "b_plane", WEST, "ColorBlue"] execVM "tf47CoreScripts\unitMarkerInit.sqf";};
				default {  hint format ["Replacement did not work for Vehicle : %1",_mkrText]; };
	};

};
