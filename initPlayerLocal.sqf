//Every Unit spawning gets introCamride
onPreloadFinished {
	[
	getPos player,
	"[TF47] SUPREMACY",
	3,
	10,
	30,
	1
	] spawn TF47_fnc_introShot; onPreloadFinished {};};

// Hard core shitty workaround because BIS Fked up again
[[rhino1,"rhino1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[rhino2,"rhino2"],"setVehicleVarname",true] call BIS_fnc_MP;
[[lion1,"lion1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[lion2,"lion2"],"setVehicleVarname",true] call BIS_fnc_MP;
[[frog1,"frog1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[tiger1,"tiger1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[tiger2,"tiger2"],"setVehicleVarname",true] call BIS_fnc_MP;
[[tiger3,"tiger3"],"setVehicleVarname",true] call BIS_fnc_MP;
[[gator1,"gator1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[gator2,"gator2"],"setVehicleVarname",true] call BIS_fnc_MP;
[[butterfly1,"butterfly1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[butterfly2,"butterfly2"],"setVehicleVarname",true] call BIS_fnc_MP;
[[firefly1,"firefly1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[manticore1,"manticore1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[griffin1,"griffin1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[raven1,"raven1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[raven2,"raven2"],"setVehicleVarname",true] call BIS_fnc_MP;
[[dustoff,"dustoff"],"setVehicleVarname",true] call BIS_fnc_MP;
[[pelican1,"pelican1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[goose1,"goose1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[albatros1,"albatros1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[wasp1,"wasp1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[eagle1,"eagle1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[thunderbird1,"thunderbird1"],"setVehicleVarname",true] call BIS_fnc_MP;
[[evileye1,"evileye1"],"setVehicleVarname",true] call BIS_fnc_MP;

if(tf47_param_vehiclemod == 2) then {
	_nul = [] spawn {
		waitUntil {sleep 10; !isNil "albatros1"; };
		albatros1 addAction ["<t color='#FF0000'>Get in C130J</t>", "(_this select 1) moveInCargo (_this select 0)",nil, 1.5, true, true, "", "!(_this in _target)"]; 
	};
};
if (tf47_var_FOBStatus == 2) then
{
	fobtable addAction ["remove F.O.B.", "[] remoteExec [""tf47_fnc_removeFOB"", 2];"];
};

tf47_var_FOBhelper = [];

_null = [] execVM "tf47CoreScripts\safezone.sqf"; 										// spawn protection

// tyre spawn
tyreSpawnSign addAction ["<t color='#00FF00'>Spawn Spare Wheel</t>", "tf47CoreScripts\helper\spawnTyre.sqf", "ACE_Wheel"];
tyreSpawnSign addAction ["<t color='#00FF00'>Spawn Spare Track</t>", "tf47CoreScripts\helper\spawnTyre.sqf", "ACE_Track"];

// supply box spawn
supplySpawnSign addAction ["<t color='#00FF00'>Empty Box</t>", "_this spawn tf47_fnc_spawnThing", ["Box_NATO_Ammo_F","emptyBox"]];
supplySpawnSign addAction ["<t color='#00FF00'>Weapon Box</t>", "_this spawn tf47_fnc_spawnThing", ["Box_NATO_Wps_F","weaponBox"]];
supplySpawnSign addAction ["<t color='#00FF00'>AntiTank Box</t>", "_this spawn tf47_fnc_spawnThing", ["Box_NATO_WpsLaunch_F","ATBox"]];
supplySpawnSign addAction ["<t color='#00FF00'>AntiAir Box</t>", "_this spawn tf47_fnc_spawnThing", ["Box_NATO_WpsLaunch_F","AABox"]];
supplySpawnSign addAction ["<t color='#00FF00'>Ammo Box</t>", "_this spawn tf47_fnc_spawnThing", ["Box_NATO_Ammo_F","AmmoBox"]];
supplySpawnSign addAction ["<t color='#00FF00'>Medical Box</t>", "_this spawn tf47_fnc_spawnThing", ["ACE_medicalSupplyCrate_advanced",""]];

/* maybe later
supplySpawnSign addAction ["<t color='#FF0000'>Mk. 6 Mortar</t>", "_this spawn tf47_fnc_spawnThing", ["B_G_Mortar_01_F",""]];

switch (tf47_param_vehiclemod) do { 
	// RHS
	case 2 : {
		supplySpawnSign addAction ["<t color='#FF0000'>M2 high</t>", "_this spawn tf47_fnc_spawnThing", ["RHS_M2StaticMG_D",""]];
		supplySpawnSign addAction ["<t color='#FF0000'>M2 low</t>", "_this spawn tf47_fnc_spawnThing", ["RHS_M2StaticMG_MiniTripod_D",""]];
		supplySpawnSign addAction ["<t color='#FF0000'>Mk.19 low</t>", "_this spawn tf47_fnc_spawnThing", ["RHS_MK19_TriPod_D",""]];
	};
};
*/

TF47_UMenu_isEnabled = true;

sleep 5;

#include "tf47CoreScripts\umenu\Includes\initPlayerLocal.sqf";

[] spawn tf47_fnc_cleanup_registerPlayer;
