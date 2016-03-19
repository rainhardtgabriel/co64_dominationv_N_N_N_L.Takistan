
private ["_side_log_pos","_side_rad","_side_name","_side_trig", "_side_ai_skill_array"];

_side_log_pos   		= log_village;
_side_rad    			= 100;
//_mkr_text 	 		=
_side_name   			= "Officer's Hideout";
_side_ai_skill_array  = [0.3,0.5,0.3,0.7,0.5,1,0.8,0.5,0.5,0.5]; // [aimingAccuracy, aimingShake, aimingSpeed, spotDistance, spotTime, courage, commanding, general, endurance, reloadSpeed] 

_ao = getMarkerPos "ao_mkr1";
_oldSide = getMarkerPos "side_mkr1";
_random_village_area = _oldSide;

while {(_oldSide distance _random_village_area < 1500) || (_ao distance _random_village_area < 1500)} do
{
_find_village = selectBestPlaces [[6685.715, 9674.075], 7000, "houses + forest", 1, 1];
_random_village_area = (_find_village select 0) select 0;
};

log_village setpos _random_village_area;
sleep 1;

nul = [_side_log_pos,2,true,1,[1,0],_side_rad,_side_ai_skill_array,nil,"offizier = this; removeAllWeapons this; this setcaptive true;",nil] execVM "LV\fillHouseOfficer.sqf";
nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,false],false,[10,0],[0,0],_side_ai_skill_array,nil,nil,nil] execVM "LV\militarize.sqf";

//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		

["tsk3", true, ["Find the enemy Officer. Capture him and bring him to Base for further Interrogation.","Side Mission: Officer Hideout","Side Mission"],getPos _side_log_pos, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

//////////////// create triggers at side mission ////////////////////////////////////////////////////////////////////////////////////////			

sleep 1;

_side_trig = createTrigger 		["EmptyDetector", getPos D_FLAG_BASE];   
_side_trig setTriggerArea 		[5, 5, 0, false];  
_side_trig setTriggerActivation ["ANY", "present", false];   
_side_trig setTriggerStatements ["offizier in thislist;", 
								"0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; 
								[side_endText] remoteExec [""SEPP_fnc_globalHint"",0,false];  
								[""Sidemission_complete""] remoteExec [""SEPP_fnc_globalsound"",0,false]; 
								[""tsk3"", true, ['Find the enemy Officer. Capture him and bring him to Base for further Interrogation.','Side Mission: Officer Hideout',""Side Mission""],
								getPos _side_log_pos, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; 
								[""tf47_changetickets"", [WEST, 2, 5]] call CBA_fnc_globalEvent;
								[[offizier]] spawn tf47_fnc_cleanside;
								deletevehicle thisTrigger; deletevehicle side_trig2" , ""];

sleep 1;

side_trig2 = createTrigger 		["EmptyDetector", getPos _side_log_pos];   
side_trig2 setTriggerArea 		[0, 0, 0, false];  
side_trig2 setTriggerActivation ["NONE", "notpresent", true];   
side_trig2 setTriggerStatements ["!alive offizier", "0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; 
								[side_endText_fail] remoteExec [""SEPP_fnc_globalHint"",0,false];  
								[""Sidemission_failed""] remoteExec [""SEPP_fnc_globalsound"",0,false]; 
								[""tsk3"", true, ['Find the enemy Officer. Capture him and bring him to Base for further Interrogation.','Side Mission: Officer Hideout',""Side Mission""],
								getPos _side_log_pos, ""FAILED"", 1, true, true,"""",true] call BIS_fnc_setTask; 
								[[offizier]] spawn tf47_fnc_cleanside;
								deletevehicle thisTrigger" , ""];

[_side_log_pos,_side_rad,_side_name]