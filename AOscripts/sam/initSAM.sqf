_aoPos = _this select 0;

_samMarkers = ["sam","sam_1","sam_2","sam_3"];

_dist = [[]];

for "_i" from 0 to ((count _samMarkers) -1)  do {
	_curMarker = (_samMarkers select _i);
	_dist pushBack ((getMarkerPos _curMarker) distance _aoPos);
};
_dist sort true;

_sitePos = _dist select 0;
_sitePos2 = 0;
// hint str _sitePos;
for "_i" from 0 to ((count _samMarkers) -1)  do {
	if(((getMarkerPos (_samMarkers select _i)) distance _aoPos) == _sitePos) then {
		_sitePos2 = (_samMarkers select _i);
	};
};
_sitePos2 = getMarkerPos _sitePos2;
sleep 10;

// hint "test";
	
// _flatPos = [0,0,0];
// _accepted = false;
// while {!_accepted} do {
	// _flatPos = [[[] call BIS_fnc_worldArea],["water","out"]] call BIS_fnc_randomPos;
	// _flatPos = getPos ((_flatPos nearRoads 2000) select 0);
	// if ((_flatPos distance (getMarkerPos "respawn_west")) > 1700 && ((_flatPos distance _aoPos) > 1200) && ((_flatPos distance _aoPos) < 2500) && (((getPos (nearestBuilding _flatPos)) distance _flatPos) > 150))  then {
		// _accepted = true;
		// _flatPos = [(_flatPos select 0) + 15,(_flatPos select 1) + 15,_flatPos select 2];
	// };
	// hint str _accepted;
// };

// _prioPos = _flatPos;
//////////////// creates a task/show notification for the ao ///////////////////////////////////////////////////////////////////////////////////////		

["tsk9", true, ["A hostile SAM Site consisting of SA-3s, SA-15s, SA-17s, SA-19s and SA-20s has been spotted near the Main Target. Destroy it!","Priority Mission: SAM Site","Priority Mission"],_sitePos2, "ASSIGNED", 1, true, true,"",true] call BIS_fnc_setTask;


[_sitePos2] execVM "AOscripts\sam\buildSA20.sqf";


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

_side_iniText = format
	[
		"<t align='center' size='1.5'>New Side Mission available!</t><br/><t size='1' align='center' color='#0040FF'>%1</t>",
		_side_name
	];

//-------------------------------------------- Show global target start hint

[_side_iniText] remoteExec ["SEPP_fnc_globalHint",0,false];

	
//////////////// Sound for Hint for active Main Mission /////////////////////////////////////////////////////////////////////////////////////////// 

sleep 0.1;

["Sidemission_new"] remoteExec ["SEPP_fnc_globalsound",0,false];