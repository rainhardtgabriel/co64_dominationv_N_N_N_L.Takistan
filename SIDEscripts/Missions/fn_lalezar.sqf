private ["_side_log_pos","_side_rad","_side_name","_side_trig", "_side_ai_skill_array"];

_side_log_pos   	    = log_lalezar;
_side_rad    		    = 150;
//_mkr_text  		    =
_side_name   		    = "Lalezar";
_side_ai_skill_array  = [0.3,0.5,0.3,0.7,0.5,1,0.8,0.5,0.5,0.5]; // [aimingAccuracy, aimingShake, aimingSpeed, spotDistance, spotTime, courage, commanding, general, endurance, reloadSpeed] 
sleep 1;

//////////////// create a cache /////////////////////////////////////////////////////////////////////////////////////////////

_side_position = (getpos _side_log_pos) findEmptyPosition [5,30];
cache1 = "CUP_TKBasicWeapons_EP1" createVehicle _side_position;
waitUntil { sleep 0.5; alive cache1 };
cache1 setVectorUp [0,0,1];
cache1Alive = true;									

//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		

["tsk4", true, ["Find hidden weapons cache at Lalezar!","Side Mission: Lalezar","Side Mission"],getPos _side_log_pos, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;


//////////////// create 2 ai patrol around cache /////////////////////////////////////////////////////////////////////////

sleep 0.1;
nul = [cache1,2,20,[true,false],[false,false,false],false,[2,0],[0,0],_side_ai_skill_array,nil,nil,nil] execVM "LV\militarize.sqf";	

nul = [_side_log_pos,2,true,2,[2,2],_side_rad,_side_ai_skill_array,nil,nil,nil] execVM "LV\fillHouse.sqf";
nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,false],false,[10,0],[0,0],_side_ai_skill_array,nil,nil,nil] execVM "LV\militarize.sqf";
nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,true],true,[0,0],[1,0],_side_ai_skill_array,nil,nil,nil] execVM "LV\militarize.sqf";

//////////////// create trigger at the side ////////////////////////////////////////////////////////////////////////////////////////			

sleep 1;

_side_trig = createTrigger 		["EmptyDetector", getPos _side_log_pos];   
_side_trig setTriggerArea 		[_side_rad, _side_rad, 0, false];  
_side_trig setTriggerActivation ["none", "notpresent", true];   
_side_trig setTriggerStatements ["!alive cache1", 
								"0 = execVM ""SIDEscripts\militarizeSideEast.sqf""; 
								[side_endText] remoteExec [""SEPP_fnc_globalHint"",0,false]; 
								[""Sidemission_complete""] remoteExec [""SEPP_fnc_globalsound"",0,false]; 
								[""tsk4"", true, ['Find the power transformer running the oil reservoir pumps','Side Mission: Lalezar',""Side Mission""],
								getPos _side_log_pos, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; 
								[""tf47_changetickets"", [WEST, 2, 5]] call CBA_fnc_globalEvent;
								[[""cache1""]] call tf47_fnc_cleanside;
								deletevehicle thisTrigger" , ""];

//////////////// moves sandstorm trigger to side ///////////////////////////////////////////////////////////////////////////		
sleep 1;
trig_sandstorm setpos (getpos _side_log_pos);

/*
sleep 1;

_side_trig2 = createTrigger 				["EmptyDetector", getPos _side_log_pos];   
_side_trig2 setTriggerArea 					[500, 500, 0, false];  
_side_trig2 setTriggerActivation 			["any", "present", true];   
_side_trig2 setTriggerStatements 			["player in thislist", "0 = [[1,1,100],"""",true] execVM ""MKY\MKY_Sand_Snow_Init.sqf""; " , "0 = [] call MKY_fnc_Exit_Sand;"];
*/

[_side_log_pos,_side_rad,_side_name]