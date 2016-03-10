//Every Unit spawning gets introCamride
if (hasInterface) then {[
	getPos player,
	"[TF47] DOMINATION",
	3,
	10,
	30,
	1
	] spawn TF47_fnc_introShot;
	};

if (tf47_var_FOBStatus == 2) then
{
	fobtable addAction ["remove F.O.B.", "[] remoteExec [""tf47_fnc_removeFOB"", 2];"];
};

_null = [] execVM "tf47CoreScripts\safezone.sqf"; 										// spawn protection

// tyre spawn
tyreSpawnSign addAction ["<t color='#00FF00'>Spawn Spare Wheel</t>", "tf47CoreScripts\helper\spawnTyre.sqf", "ACE_Wheel"];
tyreSpawnSign addAction ["<t color='#00FF00'>Spawn Spare Track</t>", "tf47CoreScripts\helper\spawnTyre.sqf", "ACE_Track"];

TF47_UMenu_isEnabled = true;
#include "tf47CoreScripts\umenu\Includes\initPlayerLocal.sqf";