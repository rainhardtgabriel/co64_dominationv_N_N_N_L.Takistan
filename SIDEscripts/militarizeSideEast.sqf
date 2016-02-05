////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																																  //
//                      		***		ARMA3 Domination-Like-Script v1.0 - by Sepp	***											  //
//																																  //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////// Exit if not server /////////////////////////////////////////////////////////////////////////////////////////////
if(!isServer) exitwith {};

//////////////// Declare Variables  /////////////////////////////////////////////////////////////////////////////////////////////

private ["_side_Playertext", "_side_select", "_side_mkr", "_side_trig", "_side_trig2", "_side_log_pos", "_side_mkr_text", "_side_name", "_side_rad", "_side_position","_side_flatPos", "_side_iniText"];



_side_select			= "";
_side_mkr				= "";
_side_side_trig			= "";
_side_mkr_text 			= "";
_side_log_pos		    = 0;
_side_name 				= "";
_side_rad 				= 200;


//////////////// Count all playable Blufor Units /////////////////////////////////////////////////////////////////////////////////

_NumOfPlayers = west countSide playableUnits;


//////////////// Deletes/Moves all remaining Marker/Object/Trigger ////////////////////////////////////////////////////////////////////

		"side_mkr1" setmarkerpos [0,0,0];
		sleep 1;
		if (alive powertrans) then {deletevehicle powertrans;};
		if (alive Tent1) then {deletevehicle Tent1;};
		if (alive Tent2) then {deletevehicle Tent2;};
		if (alive Tent3) then {deletevehicle Tent3;};
		if (alive CampFire) then {deletevehicle CampFire;};
		
		sleep 60;
		
		
//////////////// Random Selects the AO  //////////////////////////////////////////////////////////////////////////////////////////		
_side_select = ["gamsar", "village"] call BIS_fnc_selectRandom;


//"valley","mine"




//////////////// Side is Lalezar ////////////////////////////////////////////////////////////////////////////////////////////////		


if ( _side_select == "gamsar") then {
									_side_log_pos   	= log_gamsar_side;
									_side_rad    		= 150;
									//_mkr_text  		=
									_side_name   		= "Gamsar Military Base";
																	
									sleep 1;

									//////////////// create a CapVeh1 /////////////////////////////////////////////////////////////////////////////////////////////

									_side_position = [[[getPos _side_log_pos, 50],_side_trig],["water","out"]] call BIS_fnc_randomPos;
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
									waitUntil { sleep 0.5; alive CapVeh1; };
									CapVeh1 setVectorUp [0,0,1];
									CapVeh1 setDamage 0.95;
									CapVeh1Alive = true;									
									
									//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		
		
									["tsk2", true, ["Find the Attack Helicopter captured by enemy troops. Find and capture the missing pilot held as hostage","Side Mission: Gamsar","Side Mission"],getPos _side_log_pos, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

									
									//////////////// create 2 ai patrol around CapVeh1 /////////////////////////////////////////////////////////////////////////

									sleep 0.1;
									nul = [powertrans,2,20,[true,false],[false,false,false],false,[2,0],[0,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";	

									nul = [_side_log_pos,2,true,2,[2,2],_side_rad,"default",nil,nil,nil] execVM "LV\fillHouse.sqf";
									nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,false],false,[10,0],[0,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,true],true,[0,0],[1,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";

									//////////////// create trigger at side mission ////////////////////////////////////////////////////////////////////////////////////////			
		
									sleep 1;
		
									_side_trig = createTrigger 					["EmptyDetector", getPos _side_log_pos];   
									_side_trig setTriggerArea 					[_side_rad, _side_rad, 0, false];  
									_side_trig setTriggerActivation 			["EAST", "notpresent", true];   
									_side_trig setTriggerStatements 			["this", "0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; [side_endText] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk2"", true, ['Find the Attack Helicopter captured by enemy troops. Find and capture the missing pilot held as hostage','Side Mission: Gamsar',""Side Mission""],getPos _side_log_pos, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask;deletevehicle thisTrigger" , ""];
		
									
};


//////////////// Side is Valley ////////////////////////////////////////////////////////////////////////////////////////////////		
if ( _side_select == "village") then {
									_side_log_pos   		= log_village;
									_side_rad    			= 100;
									//_mkr_text 	 		=
									_side_name   			= "Officer's Hideout";
									
									
									sleep 1;

									nul = [_side_log_pos,2,true,1,[1,0],_side_rad,"default",nil,nil,nil] execVM "LV\fillHouseOfficer.sqf";
									nul = [_side_log_pos,2,_side_rad,[true,false],[true,false,false],false,[10,0],[0,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									
									//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		
		
									["tsk3", true, ["Kill the enemy Officer. Capture him and bring him to Base for further Interrogation.","Side Mission: Officer Hideout","Side Mission"],getPos _side_log_pos, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

									//////////////// create trigger at side mission ////////////////////////////////////////////////////////////////////////////////////////			
		
		/*							_side_trig = createTrigger 					["EmptyDetector", getPos _side_log_pos];   
									_side_trig setTriggerArea 					[_side_rad, _side_rad, 0, false];  
									_side_trig setTriggerActivation 			["EAST", "notpresent", true];   
									_side_trig setTriggerStatements 			["this", "0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; [side_endText] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk3"", true, ['Find the enemy Officer. Capture him and bring him to Base for further Interrogation.','Side Mission: Officer Hideout',""Side Mission""],getPos _side_log_pos, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask;deletevehicle thisTrigger" , ""];
		
		*/
		
									sleep 1;
	
									_side_trig2 = createTrigger 				["EmptyDetector", getPos D_FLAG_BASE];   
									_side_trig2 setTriggerArea 					[5, 5, 0, false];  
									_side_trig2 setTriggerActivation 			["NONE", "present", true];   
									_side_trig2 setTriggerStatements 			["{typeof _x == ""CUP_O_TK_Soldier_01""} count thislist > 0", "0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; [side_endText] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk3"", true, ['Find the enemy Officer. Capture him and bring him to Base for further Interrogation.','Side Mission: Officer Hideout',""Side Mission""],getPos _side_log_pos, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; deletevehicle thisTrigger" , ""];
		
									sleep 1;
									
									_side_trig = createTrigger 					["EmptyDetector", getPos _side_log_pos];   
									_side_trig setTriggerArea 					[0, 0, 0, false];  
									_side_trig setTriggerActivation 			["NONE", "notpresent", true];   
									_side_trig setTriggerStatements 			["(!alive _x) && (typeof _x == ""CUP_O_TK_Soldier_01"")", "0 = execVM ""SIDEscripts\militarizeSideWest.sqf""; [side_endText] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk3"", true, ['Find the enemy Officer. Capture him and bring him to Base for further Interrogation.','Side Mission: Officer Hideout',""Side Mission""],getPos _side_log_pos, ""FAILED"", 1, true, true,"""",true] call BIS_fnc_setTask; deletevehicle thisTrigger" , ""];
								
										
};

		
//////////////// moves a visible marker to the side mission //////////////////////////////////////////////////////////////////////////		

		"side_mkr1" setmarkerpos getpos _side_log_pos;
		
		
//////////////// Hint for completed Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

side_endText = format
	[
		"<t align='center' size='1.5'>Side Mission Completed!</t><br/><t size='1' align='center' color='#0040FF'>%1</t><br/>____________________<br/>Congratulations!<br/><br/> Outstanding work, Soldiers!",
		_side_name
	];


//////////////// Hint for active Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

_side_iniText = format
	[
		"<t align='center' size='1.5'>New Side Mission available!</t><br/><t size='1' align='center' color='#0040FF'>%1</t>",
		_side_name
	];

	//-------------------------------------------- Show global target start hint
	
	[_side_iniText] remoteExec ["SEPP_fnc_globalHint",0,false];

	
//////////////// Sound for Hint for active Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

sleep 0.1;

[] execVM "sounds\sidemissionNew.sqf";
 
//[playSound "sidemission_new"] call BIS_fnc_MP;
