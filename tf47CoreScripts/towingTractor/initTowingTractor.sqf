// initTowingTractor.sqf
// cargo attachTo [tow, [0,-6.5,2.25]]; cargo setVectorUp ([[sin 0,-sin 5,cos 0 * cos 5],-0] call BIS_fnc_rotateVector2D);
_veh = _this select 0;
// hint "yo";
_veh addAction ["Start towing", "startTowing.sqf", _veh, 1.5, true, true, "", "!(_target getVariable[""tf47_isTowing"", false])"];