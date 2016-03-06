// TODO
// prevent respawning too soon
// spawn not every main
// dont spawn when there is no cup

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

["tsk20", true, ["A hostile SAM Site consisting of SA-3s, SA-15s, SA-19s and SA-20s has been spotted near the Main Target. Destroy it!","Priority Mission: SAM Site","Priority Mission"],_sitePos, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;

_allObjectsArr = [];
_nextPos = [];

_allObjectsArr = _allObjectsArr + ([_sitePos] call TF47_SamBuilding_fnc_buildSA20);
sleep 5;

// Supply
_nextPos = [_sitePos, 50, 160, 400] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjectsArr = _allObjectsArr + ([_nextPos] call TF47_SamBuilding_fnc_buildSupply);
};
sleep 5;

// P-12 Radar
_nextPos = [_sitePos, 50, 175, 400] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjectsArr = _allObjectsArr + ([_nextPos,"pook_P12_RU"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

// SA-3 (mobile)
_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjectsArr = _allObjectsArr + ([_nextPos,"pook_sa3_tracked_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjectsArr = _allObjectsArr + ([_nextPos,"pook_sa3_tracked_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

// SA-15 
_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjectsArr = _allObjectsArr + ([_nextPos,"pook_9k332_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

_nextPos = [_sitePos, 50, 250, 500] call TF47_SamBuilding_fnc_findSamPosition;
if(((count _nextPos) != 0)) then {
	_allObjectsArr = _allObjectsArr + ([_nextPos,"pook_9k332_tak"] call TF47_SamBuilding_fnc_buildSingleSam);
};
sleep 5;

diag_log "-------------DEBUG SAM ___-";
diag_log _allObjectsArr;

// 4x SA-19 patrol
for "_i" from 0 to 3 do {
	_nextPos = _sitePos findEmptyPosition [50, 500];
	_newVehicle = "pook_sa19_tak" createVehicle _nextPos;
	_newGroup = createGroup east;
	_newVehicle setskill 1;
	createVehicleCrew _newVehicle;
	_allObjectsArr pushBack _newVehicle;
	(crew _newVehicle) join _newGroup;
	[_newGroup,_sitePos, 300] call BIS_fnc_taskPatrol;
	sleep 10;
};

// 2x BTR-60 patrol
for "_i" from 0 to 1 do {
	_nextPos = _sitePos findEmptyPosition [50, 500];
	_newVehicle = "cup_o_btr60_tk" createVehicle _nextPos;
	_newGroup = createGroup east;
	_newVehicle setskill 1;
	createVehicleCrew _newVehicle;
	_allObjectsArr pushBack _newVehicle;
	(crew _newVehicle) join _newGroup;
	[_newGroup,_sitePos, 300] call BIS_fnc_taskPatrol;
	sleep 10;
};

sleep 10;

// 1x Squad
_newGroup = [_nextPos,east, (configfile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Infantry" >> "CUP_O_TK_InfantrySquad")] call BIS_fnc_spawnGroup;
[_newGroup,_sitePos, 300] call BIS_fnc_taskPatrol;
_allObjectsArr pushBack _newGroup;
sleep 10;

// 1x HQ
_newGroup = [_nextPos,east, ["CUP_O_TK_Commander","CUP_O_TK_Officer,CUP_O_TK_Soldier,CUP_O_TK_Soldier"]] call BIS_fnc_spawnGroup;
[_newGroup,_sitePos, 50] call BIS_fnc_taskPatrol;
_allObjectsArr pushBack _newGroup;

// Show global target start hint

_side_iniText = format
	[
		"<t align='center' size='1.5'>New Priority Mission available!</t><br/><t size='1' align='center' color='#0040FF'>%1</t>",
		"A hostile SAM Site consisting of SA-3s, SA-15s, SA-19s and SA-20s has been spotted near the Main Target. Destroy it!"
	];
[_side_iniText] remoteExec ["SEPP_fnc_globalHint",0,false];

	
// Sound for Hint for active Main Mission 

sleep 0.1;

["Sidemission_new"] remoteExec ["SEPP_fnc_globalsound",0,false];

// get the vehicles


_refuel = [];
_reammo = [];

diag_log "-------------DEBUG SAM";
diag_log _allObjectsArr;

_allVehicles = [];
_allGroups = [];
// manage the site
{
	if((typeName _x) == "GROUP") then {
		_allGroups pushBack _x;
	} else {
		switch (typeOf _x) do {
			case "cup_o_ural_refuel_tka" : {
				_refuel = _x;
			};
			case "cup_o_ural_reammo_tka" : {
				_reammo = _x;
			};
		};
		if(_x isKindOf "Land" || ((typeOf _x) == "pook_P12_RU") || ((typeOf _x) == "pook_sa3_tracked_tak")) then {
			_allVehicles pushBack _x;
		};
	};
} forEach _allObjectsArr;

{
	_x addEventHandler ["Fired",{ _veh = (_this select 0); if((getDammage _reammo) > 0.95) then {_veh setVehicleAmmo 1;};}];
} forEach _allVehicles;

_allAlive = true;

// optimize this at some point
while {_allAlive} do {
	_allAlive = false;
	{
		if((getDammage _x) <= 0.95) then {
			_allAlive = true;
			hint ("alive" + (str _x));
		};
	} forEach _allVehicles;
	sleep 60;
};

_side_endText = format
	[
		"<t align='center' size='1.5'>Priority Mission Completed!</t><br/><t size='1' align='center' color='#0040FF'>%1</t><br/>____________________<br/>Congratulations!<br/><br/> Outstanding work, Soldiers!",
		"Those SAMs won't shoot down any aircrafts anymore!"
	];
[_side_endText] remoteExec ["SEPP_fnc_globalHint",0,false];

["Sidemission_complete"] remoteExec ["SEPP_fnc_globalsound",0,false]; 

["tsk20", true, ["A hostile SAM Site consisting of SA-3s, SA-15s, SA-19s and SA-20s has been spotted near the Main Target. Destroy it!","Priority Mission: SAM Site","Priority Mission"],_sitePos, "SUCCEEDED", 1, true, true,"",true] call BIS_fnc_setTask;

sleep 10;

["tf47_changetickets", [WEST, 2, 15]] call CBA_fnc_globalEvent;
 
// diag_log _allVehicles;

// {
	// _x deleteVehicleCrew (driver _x);
	// _x deleteVehicleCrew (gunner _x);
	// _x deleteVehicleCrew (commander _x);
	// deleteVehicle _x;
// } forEach _allVehicles;

{
	if((typeName _x) != "GROUP") then {
		deleteVehicle _x;
	} else {
		{
			deleteVehicle _x;
		} forEach (units _x);
	};
} forEach _allObjectsArr;
{
	if ((_x distance _sitePos) <= 500) then {
		deleteVehicle _x;
	};
} forEach allDead;

// watch the site

// clean up the site



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
