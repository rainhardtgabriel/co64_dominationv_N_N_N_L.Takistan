// startTowing.sqf
// cargo attachTo [tow, [0,-6.5,2.25]]; cargo setVectorUp ([[sin 0,-sin 5,cos 0 * cos 5],-0] call BIS_fnc_rotateVector2D);
_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_args = _this select 3;
_tow = _args;

_tgt = ((nearestObjects [_tow, ["Plane"], 20]) select 0);

_type = typeOf _tgt;

_attachArr = [0,0,0];
_vectorUp = [0,0,1];

switch true do {
	case (["CUP_B_AV8B", _type] call BIS_fnc_inString) : {
		_attachArr = [0,-6.5,2.25];
		_vectorUp = [0,-0.0871557,0.996195];
	};
};

_tgt attachTo [_tow, _attachArr];
_tgt setVectorUp _vectorUp;

_tow setVariable["tf47_isTowing", true, true];
_ret = _tow addAction ["Stop towing", {detach ((_this select 3) select 0); ((_this select 3) select 1) setVariable["tf47_isTowing", false, true];}, [_tgt,_tow] ];

[_ret, _tow] spawn {
	waitUntil{ sleep 1; (!((_this select 1) getVariable["tf47_isTowing", false]))};
	(_this select 1) removeAction (_this select 0);
};