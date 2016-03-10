////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//																																  //
//                      		***		ARMA3 Domination-Like-Script v1.0 - by Sepp	***											  //
//																																  //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////// Exit if not server /////////////////////////////////////////////////////////////////////////////////////////////
if(!([] call TF47_Helper_fnc_checkForHc)) exitwith {};

//////////////// Declare Variables  /////////////////////////////////////////////////////////////////////////////////////////////

private ["_power_trig1","_power_trig2", "_power_trig3","_power_trig4", "_pospowertrans1", "_pospowertrans2", "_pospowertrans3", "_pospowertrans4", "_pospowertrans5", "_pospowertrans6", "_pospowertrans7", "_pospowertrans8", "_pospowertrans9", "_pospowertrans10", "_pospowertrans11", "_pospowertrans12", "_pospowertrans13", "_pospowertrans14", "_pospowertrans15", "_pospowertrans16", "_pospowertrans1" ];


//////////////// Count all playable Blufor Units /////////////////////////////////////////////////////////////////////////////////

_NumOfPlayers = west countSide playableUnits;


//////////////// Deletes/Moves all remaining Marker/Object/Trigger ////////////////////////////////////////////////////////////////////


//////////////// PowerStation SW ////////////////////////////////////////////////////////////////////////////////////////////////		


									//////////////// create a 4 powertransformer /////////////////////////////////////////////////////////////////////////////////////////////

									_pospowertrans1 		= (getpos log_power1) findEmptyPosition [5,30];
									_pospowertrans2 		= (getpos log_power1) findEmptyPosition [5,30];
									_pospowertrans3 		= (getpos log_power1) findEmptyPosition [5,30];
									_pospowertrans4 		= (getpos log_power1) findEmptyPosition [5,30];
									
									sleep 0.1;
		
									powertrans1 		= "Land_dp_transformer_F" createVehicle _pospowertrans1;
									powertrans2 		= "Land_dp_transformer_F" createVehicle _pospowertrans2;
									powertrans3 		= "Land_dp_transformer_F" createVehicle _pospowertrans3;
									powertrans4		 	= "Land_dp_transformer_F" createVehicle _pospowertrans4;								
									
									//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		
		
									["tsk8", true, ["Seize the Power Station in the South-Western Quadrant of Takistan!","Additional Mission: Cut the Power (Cham)","Additional Mission"],getPos log_power1, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

									
									//////////////// create ai around power station /////////////////////////////////////////////////////////////////////////

									sleep 0.1;
	
									nul = [log_power1,2,true,2,[2,2],50,"default",nil,nil,nil] execVM "LV\fillHouse.sqf";
									nul = [log_power1,2,50,[true,false],[true,false,false],false,[10,0],[0,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									nul = [log_power1,2,50,[true,false],[true,false,true],true,[0,0],[1,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									
									//////////////// create trigger at the side ////////////////////////////////////////////////////////////////////////////////////////			
		
									sleep 1;
		
									_power_trig1 = createTrigger 				["EmptyDetector", getPos log_power1];   
									_power_trig1 setTriggerArea 				[0, 0, false];  
									_power_trig1 setTriggerActivation 			["ANY", "notpresent", true];   
									_power_trig1 setTriggerStatements 			["(!alive powertrans1) && (!alive powertrans2) && (!alive powertrans3) && (!alive powertrans4)", "0 = [0.95] execVM ""TacAds\lightsoutSW.sqf""; [power_endText] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk8"", true, ['Seize the Power Station in the South-Western Quadrant of Takistan!','Additional Mission: Cut the Power (Cham)',""Additional Mission""],getPos log_power1, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; deletevehicle thisTrigger" , ""];
											
									//////////////// Hint for completed Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

									power_endText = format
									[
									"<t align='center' size='1.5'>Additional Mission Completed!</t><br/><t size='1' align='center' color='#0040FF'>%1</t><br/>____________________<br/>Congratulations!<br/><br/> The Power for the South Western Quadrant is now cut!",
									"Near Cham"
									];
					
									sleep 1;
//////////////// PowerStation NE ////////////////////////////////////////////////////////////////////////////////////////////////		


									//////////////// create a 4 powertransformer /////////////////////////////////////////////////////////////////////////////////////////////

									_pospowertrans5 		= (getpos log_power2) findEmptyPosition [5,30];
									_pospowertrans6 		= (getpos log_power2) findEmptyPosition [5,30];
									_pospowertrans7 		= (getpos log_power2) findEmptyPosition [5,30];
									_pospowertrans8 		= (getpos log_power2) findEmptyPosition [5,30];
									
									sleep 0.1;
		
									powertrans5 		= "Land_dp_transformer_F" createVehicle _pospowertrans5;
									powertrans6 		= "Land_dp_transformer_F" createVehicle _pospowertrans6;
									powertrans7 		= "Land_dp_transformer_F" createVehicle _pospowertrans7;
									powertrans8		 	= "Land_dp_transformer_F" createVehicle _pospowertrans8;								
									
									//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		
		
									["tsk9", true, ["Seize the Power Station in the North-Eastern Quadrant of Takistan!","Additional Mission: Cut the Power (Par-E Siah Oilfield)","Additional Mission"],getPos log_power2, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

									
									//////////////// create ai around power station /////////////////////////////////////////////////////////////////////////

									sleep 0.1;
	
									nul = [log_power2,2,true,2,[2,2],50,"default",nil,nil,nil] execVM "LV\fillHouse.sqf";
									nul = [log_power2,2,50,[true,false],[true,false,false],false,[10,0],[0,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									nul = [log_power2,2,50,[true,false],[true,false,true],true,[0,0],[1,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									
									//////////////// create trigger at the side ////////////////////////////////////////////////////////////////////////////////////////			
		
									sleep 1;
		
									_power_trig2 = createTrigger 				["EmptyDetector", getPos log_power2];   
									_power_trig2 setTriggerArea 				[0, 0, false];  
									_power_trig2 setTriggerActivation 			["ANY", "notpresent", true];   
									_power_trig2 setTriggerStatements 			["(!alive powertrans5) && (!alive powertrans6) && (!alive powertrans7) && (!alive powertrans8)", "0 = [0.95] execVM ""TacAds\lightsoutNE.sqf""; [power_endText2] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk9"", true, ['Seize the Power Station in the North-Eastern Quadrant of Takistan!','Additional Mission: Cut the Power (Par-E Siah Oilfield)',""Additional Mission""],getPos log_power2, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; deletevehicle thisTrigger" , ""];
											
									//////////////// Hint for completed Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

									power_endText2 = format
									[
									"<t align='center' size='1.5'>Additional Mission Completed!</t><br/><t size='1' align='center' color='#0040FF'>%1</t><br/>____________________<br/>Congratulations!<br/><br/> The Power for the North Eastern Quadrant is now cut!",
									"Near Par-E Siah Oilfield"
									];
									
									sleep 1;
//////////////// PowerStation SE ////////////////////////////////////////////////////////////////////////////////////////////////		


									//////////////// create a 4 powertransformer /////////////////////////////////////////////////////////////////////////////////////////////

									_pospowertrans9 		= (getpos log_power3) findEmptyPosition [5,30];
									_pospowertrans10 		= (getpos log_power3) findEmptyPosition [5,30];
									_pospowertrans11		= (getpos log_power3) findEmptyPosition [5,30];
									_pospowertrans12		= (getpos log_power3) findEmptyPosition [5,30];
									
									sleep 0.1;
		
									powertrans9 		= "Land_dp_transformer_F" createVehicle _pospowertrans9;
									powertrans10 		= "Land_dp_transformer_F" createVehicle _pospowertrans10;
									powertrans11		= "Land_dp_transformer_F" createVehicle _pospowertrans11;
									powertrans12	 	= "Land_dp_transformer_F" createVehicle _pospowertrans12;								
									
									//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		
		
									["tsk10", true, ["Seize the Power Station in the South-Eastern Quadrant of Takistan!","Additional Mission: Cut the Power (Gamsar)","Additional Mission"],getPos log_power3, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

									
									//////////////// create ai around power station /////////////////////////////////////////////////////////////////////////

									sleep 0.1;
	
									nul = [log_power3,2,true,2,[2,2],50,"default",nil,nil,nil] execVM "LV\fillHouse.sqf";
									nul = [log_power3,2,50,[true,false],[true,false,false],false,[10,0],[0,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									nul = [log_power3,2,50,[true,false],[true,false,true],true,[0,0],[1,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									
									//////////////// create trigger at the side ////////////////////////////////////////////////////////////////////////////////////////			
		
									sleep 1;
		
									_power_trig3 = createTrigger 				["EmptyDetector", getPos log_power3];   
									_power_trig3 setTriggerArea 				[0, 0, false];  
									_power_trig3 setTriggerStatements 			["(!alive powertrans9) && (!alive powertrans10) && (!alive powertrans11) && (!alive powertrans12)", "0 = [0.95] execVM ""TacAds\lightsoutSE.sqf""; [power_endText3] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk10"", true, ['Seize the Power Station in the North-Eastern Quadrant of Takistan!','Additional Mission: Cut the Power (Gamsar)',""Additional Mission""],getPos log_power3, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; deletevehicle thisTrigger" , ""];
									_power_trig3 setTriggerActivation 			["ANY", "notpresent", true];   
											
									//////////////// Hint for completed Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

									power_endText3 = format
									[
									"<t align='center' size='1.5'>Additional Mission Completed!</t><br/><t size='1' align='center' color='#0040FF'>%1</t><br/>____________________<br/>Congratulations!<br/><br/> The Power for the South Eastern Quadrant is now cut!",
									"Near Gamsar"
									];
									
									sleep 1;
//////////////// PowerStation NW ////////////////////////////////////////////////////////////////////////////////////////////////		


									//////////////// create a 4 powertransformer /////////////////////////////////////////////////////////////////////////////////////////////

									_pospowertrans13 		= (getpos log_power4) findEmptyPosition [5,30];
									_pospowertrans14 		= (getpos log_power4) findEmptyPosition [5,30];
									_pospowertrans15		= (getpos log_power4) findEmptyPosition [5,30];
									_pospowertrans16		= (getpos log_power4) findEmptyPosition [5,30];
									
									sleep 0.1;
		
									powertrans13		= "Land_dp_transformer_F" createVehicle _pospowertrans13;
									powertrans14 		= "Land_dp_transformer_F" createVehicle _pospowertrans14;
									powertrans15		= "Land_dp_transformer_F" createVehicle _pospowertrans15;
									powertrans16	 	= "Land_dp_transformer_F" createVehicle _pospowertrans16;								
									
									//////////////// creates a task/show notification for the mission ///////////////////////////////////////////////////////////////////////////////////////		
		
									["tsk11", true, ["Seize the Power Station in the North-Western Quadrant of Takistan!","Additional Mission: Cut the Power (Nur)","Additional Mission"],getPos log_power4, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

									
									//////////////// create ai around power station /////////////////////////////////////////////////////////////////////////

									sleep 0.1;
	
									nul = [log_power4,2,true,2,[2,2],50,"default",nil,nil,nil] execVM "LV\fillHouse.sqf";
									nul = [log_power4,2,50,[true,false],[true,false,false],false,[10,0],[0,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									nul = [log_power4,2,50,[true,false],[true,false,true],true,[0,0],[1,0],"default",nil,nil,nil] execVM "LV\militarize.sqf";
									
									//////////////// create trigger at the side ////////////////////////////////////////////////////////////////////////////////////////			
		
									sleep 1;
		
									_power_trig3 = createTrigger 				["EmptyDetector", getPos log_power4];   
									_power_trig3 setTriggerArea 				[0, 0, false];  
									_power_trig3 setTriggerStatements 			["(!alive powertrans13) && (!alive powertrans14) && (!alive powertrans15) && (!alive powertrans16)", "0 = [0.95] execVM ""TacAds\lightsoutNW.sqf""; [power_endText4] remoteExec [""SEPP_fnc_globalHint"",0,false]; 0 = execVM ""sounds\sidemissionComplete.sqf""; [""tsk11"", true, ['Seize the Power Station in the North-Western Quadrant of Takistan!','Additional Mission: Cut the Power (Nur)',""Additional Mission""],getPos log_power4, ""SUCCEEDED"", 1, true, true,"""",true] call BIS_fnc_setTask; deletevehicle thisTrigger" , ""];
									_power_trig3 setTriggerActivation 			["ANY", "notpresent", true];   
											
									//////////////// Hint for completed Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

									power_endText4 = format
									[
									"<t align='center' size='1.5'>Additional Mission Completed!</t><br/><t size='1' align='center' color='#0040FF'>%1</t><br/>____________________<br/>Congratulations!<br/><br/> The Power for the South Eastern Quadrant is now cut!",
									"Near Nur"
									];