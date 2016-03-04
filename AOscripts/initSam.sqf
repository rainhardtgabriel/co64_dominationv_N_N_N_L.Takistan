
_aoPos = _this select 0;
_samMarkers = ["sam","sam_1","sam_2","sam_3"];
_dist = [[]];

// BEST Algorithm ever 
for "_i" from 0 to ((count _samMarkers) -1)  do {
	_curMarker = (_samMarkers select _i);
	_dist pushBack ((getMarkerPos _curMarker) distance _aoPos);
};
_dist sort true;

_closestPos = _dist select 0;
_closestMarker = 0;

for "_i" from 0 to ((count _samMarkers) -1)  do {
	if(((getMarkerPos (_samMarkers select _i)) distance _aoPos) == _closestPos) then {
		_closestMarker = (_samMarkers select _i);
	};
};
_sitePos = getMarkerPos _closestMarker;
sleep 5;

//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		

["tsk9", true, ["A hostile SAM Site consisting of SA-3s, SA-15s, SA-19s and SA-20s has been spotted near the Main Target. Destroy it!","Priority Mission: SAM Site","Priority Mission"],_sitePos, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

_allObjects = [];
_nextPos = [];

_allObjects pushBack ([_sitePos] call TF47_SamBuilding_fnc_buildSA20);
sleep 5;

// Supply
_nextPos = [_sitePos, 50, 160, 400] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjects pushBack ([_nextPos] call TF47_SamBuilding_fnc_buildSupply);
};
sleep 5;

// P-12 Radar
_nextPos = [_sitePos, 50, 175, 400] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjects pushBack ([_nextPos,"pook_P12_RU"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

// SA-3 (mobile)
_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjects pushBack ([_nextPos,"pook_sa3_tracked_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjects pushBack ([_nextPos,"pook_sa3_tracked_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

// SA-15 
_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjects pushBack ([_nextPos,"pook_9k332_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjects pushBack ([_nextPos,"pook_9k332_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

// 4x SA-19 patrol
for "_i" from 0 to 3 do {
	_nextPos = _sitePos findEmptyPosition [50, 500];
	_newVehicle = "pook_sa19_tak" createVehicle _nextPos;
	_newGroup = createGroup east;
	_newVehicle setskill 1;
	createVehicleCrew _newVehicle;
	_allObjects pushBack _newVehicle;
	(crew _newVehicle) join _newGroup;
	[_newGroup,_sitePos, 500] call BIS_fnc_taskPatrol;
	sleep 10;
};

// 2x BTR-60 patrol
for "_i" from 0 to 1 do {
	_nextPos = _sitePos findEmptyPosition [50, 500];
	_newVehicle = "cup_o_btr60_tk" createVehicle _nextPos;
	_newGroup = createGroup east;
	_newVehicle setskill 1;
	createVehicleCrew _newVehicle;
	_allObjects pushBack _newVehicle;
	(crew _newVehicle) join _newGroup;
	[_newGroup,_sitePos, 500] call BIS_fnc_taskPatrol;
	sleep 10;
};

sleep 10;

// 1x Squad
_newGroup = [_nextPos,east, (configfile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Infantry" >> "CUP_O_TK_InfantrySquad")] call BIS_fnc_spawnGroup;
[_newGroup,_sitePos, 300] call BIS_fnc_taskPatrol;
_allObjects pushBack _newGroup;
sleep 10;

// 1x HQ
_newGroup = [_nextPos,east, ["CUP_O_TK_Commander","CUP_O_TK_Officer,CUP_O_TK_Soldier,CUP_O_TK_Soldier"]] call BIS_fnc_spawnGroup;
[_newGroup,_sitePos, 50] call BIS_fnc_taskPatrol;
_allObjects pushBack _newGroup;

// Show global target start hint

_side_iniText = format
	[
		"<t align='center' size='1.5'>New Priority Mission available!</t><br/><t size='1' align='center' color='#0040FF'>%1</t>",
		_side_name
	];
[_side_iniText] remoteExec ["SEPP_fnc_globalHint",0,false];

	
// Sound for Hint for active Main Mission 

sleep 0.1;

["Sidemission_new"] remoteExec ["SEPP_fnc_globalsound",0,false];



// _sa3Pos = getPos ((_flatPos nearRoads 150) select 0);
// _sa3Pos2 = _sa3Pos;
// while {(_sa3Pos distance _sa3Pos2) < 300} do {
	// _sa3Pos2 = getPos ((_flatPos nearRoads 400) select 0);
	// hint "test";
// };


// [_sa3Pos,"pook_sa3_tracked_tak"] execVM "AOscripts\sam\buildSingleSam.sqf";
// [_sa3Pos2,"pook_sa3_tracked_tak"] execVM "AOscripts\sam\buildSingleSam.sqf";

/*
	
//////////////// Hint for completed Side Mission /////////////////////////////////////////////////////////////////////////////////////////// 

side_endText = format
	[
		"<t align='center' size='1.5'>Side Mission Completed!</t><br/><t size='1' align='center' color='#0040FF'>%1</t><br/>____________________<br/>Congratulations!<br/><br/> Outstanding work, Soldiers!",
		_side_name
	];


	
//////////////// Hint for active Side Mission /////////////////////////////////////////////////////////////////////////////////////////// 
*/
