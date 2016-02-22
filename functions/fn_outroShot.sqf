//if (isServer) exitWith {};

_camera = "camera" camcreate [3380.36,13238.9,0];

_camera camPrepareTarget [(getMarkerPos "ao_mkr1") select 0, (getMarkerPos "ao_mkr1") select 1, -10];
_camera camPreparePos [((getMarkerPos "ao_mkr1") select 0) + 100, ((getMarkerPos "ao_mkr1") select 1) - 70,100];
_camera camPrepareFOV 0.489;
_camera camPrepareBank -10;
_camera camCommitPrepared 0;


sleep 3;
titlecut ["","BLACK OUT",2];
sleep 2;

titlecut ["","BLACK IN",0.5];

_camera cameraeffect ["internal", "back"];
showCinemaBorder true;
playSound "outro";

_camera camPrepareTarget [((getMarkerPos "ao_mkr1") select 0) + 40, ((getMarkerPos "ao_mkr1") select 1) - 10, -5];
_camera camPreparePos [((getMarkerPos "ao_mkr1") select 0) + 150, ((getMarkerPos "ao_mkr1") select 1) - 150,30];
_camera camPrepareFOV 0.7;
_camera camPrepareBank -10;
_camera camCommitPrepared 0;

_camera camPrepareTarget [((getMarkerPos "ao_mkr1") select 0) - 40, ((getMarkerPos "ao_mkr1") select 1) + 10, -5];
_camera camPreparePos [((getMarkerPos "ao_mkr1") select 0) - 150, ((getMarkerPos "ao_mkr1") select 1) - 150,25];
_camera camPrepareFOV 0.75;
_camera camPrepareBank -10;
_camera camCommitPrepared 30;

sleep 9;

[
	[
		["[TF47] Domination","<t align = 'center' shadow = '1' size = '2.0' font='PuristaBold'>%1</t><br/>", 0.06],
		["a mission made by","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0.04],
		["[TF47] Sepp [MISFIT]","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0.01],
		["[TF47] Raini [MISFIT]","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0.01],
		["[TF47] Rampagé [FORECON]","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0.01],
		["[TF47] Lucke [MISFIT]","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0.01],
		["[TF47] Fred [MISFIT]","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0.01],
		["[TF47] BlackPixxel [MISFIT]","<t align = 'center' shadow = '1' size = '0.7'>%1</t>", 0.01]
	]
] spawn TF47_fnc_typeText;