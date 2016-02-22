private ["_side_log_pos","_side_rad","_side_name","_side_trig","_side_position","_side_flatPos", "_side_ai_skill_array"];

_side_log_pos   	= log_gamsar_side;
_side_rad    		= 250;
//_mkr_text  		=
_side_name   		= "Gamsar Military Base";
_side_trig 			= "";
_side_ai_skill_array  = [0.3,0.5,0.3,0.7,0.5,1,0.8,0.5,0.5,0.5]; // [aimingAccuracy, aimingShake, aimingSpeed, spotDistance, spotTime, courage, commanding, general, endurance, reloadSpeed] 

sleep 1;

//////////////// create a CapVeh1 /////////////////////////////////////////////////////////////////////////////////////////////

_side_position = [[[getPos _side_log_pos, 0],_side_trig],["water","out"]] call BIS_fnc_randomPos;
_side_flatPos = _side_position isFlatEmpty[3, 1, 0.5, 30, 0, false];

while {(count _side_flatPos) < 1} do {
_side_position = [[[getPos _side_log_pos,50],_side_trig],["water","out"]] call BIS_fnc_randomPos;
_side_flatPos = _side_position isFlatEmpty[3, 1, 0.5, 30, 0, false];
};

while {IsOnRoad _side_flatPos} do {
_side_position = [[[getPos _side_log_pos, 50],_side_trig],["water","out"]] call BIS_fnc_randomPos;
_side_flatPos = _side_position isFlatEmpty[3, 1, 0.5, 30, 0, false];
};
CapVeh1 = "CUP_B_AH1_BAF" createVehicle _side_flatPos;
waitUntil { sleep 0.5; alive CapVeh1 };
CapVeh1 setVectorUp [0,0,1];
CapVeh1 setDamage 0.95;
CapVeh1Alive = true;									

//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		

["tsk2", true, ["Find the Attack Helicopter captured by enemy troops. Find and capture the missing pilot held as hostage","Side Mission: Gamsar","Side Mission"],getPos _side_log_pos, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;


//////////////// create 2 ai patrol around CapVeh1 /////////////////////////////////////////////////////////////////////////

sleep 0.1;
nul = [CapVeh1,2,20,[true,false],[false,false,false],false,[2,0],[0,0],_side_ai_skill_array,nil,nil,nil] execVM "LV\militarize.sqf";	
nul = [_side_log_pos,1,false,1,[1,0],100,"default",nil,"pilot1 = this; removeAllWeapons this; this setcaptive true; removeHeadgear this;",nil] execVM "LV\fillHouseOfficer.sqf";


nul = [_side_log_pos,2,true,2,[2,2],_side_rad,_side_ai_skill_array,nil,nil,nil] execVM "LV\fillHouse.sqf";
nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,false],false,[10,0],[0,0],_side_ai_skill_array,nil,nil,nil] execVM "LV\militarize.sqf";
nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,true],true,[0,0],[1,0],_side_ai_skill_array,nil,nil,nil] execVM "LV\militarize.sqf";

//////////////// create triggers at side mission ////////////////////////////////////////////////////////////////////////////////////////			

sleep 1;

_side_trig = createTrigger 		["EmptyDetector", getPos D_FLAG_BASE];   
_side_trig setTriggerArea 		[5, 5, 0, false];  
_side_trig setTriggerActivation ["Any", "present", true];   
_side_trig setTriggerStatements ["(!alive CapVeh1) && (pilot1 in thislist)", 
								"0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; 
								[side_endText] remoteExec [""SEPP_fnc_globalHint"",0,false]; 
								[""Sidemission_complete""] remoteExec [""SEPP_fnc_globalsound"",0,false]; 
								[""tsk2"", true, ['Find the Attack Helicopter captured by enemy troops. Find and capture the missing pilot held as hostage','Side Mission: Gamsar',""Side Mission""],getPos _side_log_pos, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; 
								[""tf47_changetickets"", [WEST, 5, ticketcount]] call CBA_fnc_globalEvent;
								[[""CapVeh1"",""pilot1""]] call tf47_fnc_cleanside;
								deletevehicle thisTrigger; deletevehicle side_trig2" , ""];

side_trig2 = createTrigger 		["EmptyDetector", getPos _side_log_pos];   
side_trig2 setTriggerArea 		[0, 0, 0, false];  
side_trig2 setTriggerActivation ["Any", "present", true];   
side_trig2 setTriggerStatements ["!alive pilot1", "0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; 
								[side_endText_fail] remoteExec [""SEPP_fnc_globalHint"",0,false]; 
								[""Sidemission_failed""] remoteExec [""SEPP_fnc_globalsound"",0,false]; 
								[""tsk2"", true, ['Find the Attack Helicopter captured by enemy troops and find and capture the missing pilot held as hostage','Side Mission: Gamsar',""Side Mission""],getPos _side_log_pos, ""FAILED"", 1, true, true,"""",true] call BIS_fnc_setTask; 
								[[""CapVeh1"",""pilot1""]] call tf47_fnc_cleanside;
								deletevehicle thisTrigger" , ""];

[_side_log_pos,_side_rad,_side_name]