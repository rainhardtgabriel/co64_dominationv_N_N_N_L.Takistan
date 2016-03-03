_input = _this select 0;
_type = _this select 1;
_xx = _input select 0;
_yy = _input select 1;
_zz = _input select 2;

_newObject = createVehicle ['pook_Land_fort_artillery_nest_DES', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
_newObject setPos [_xx,_yy,_zz];
// _newObject setDir (random 360);
// _newObject setVectorUP (surfaceNormal [(getPosATL _newObject) select 0,(getPosATL _newObject) select 1]);
_newObject setPos (getpos _newObject);
// _newObject setVectorDirAndUp [[-0.214818,-0.97625,0.0280874], [0.0144017,0.0255893,0.999569]];

_newObject setDir 90;
_newObject1 = createVehicle ['pook_Land_fort_artillery_nest_DES', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
// _newObject1 setPos [_xx - 4,_yy + 4, _zz]; 
_newObject1 setPos [_xx - 5,_yy + 4, _zz];  
_newObject1 setDir ((getDir _newObject) - 100);
// _newObject1 setDir ((getDir _newObject) - 90);

// _newObject1 setPos [_xx - 5,_yy - 5, _zz]; 
// _newObject1 setDir ((getDir _newObject) - 90);

// _newObject1 setVectorUP (surfaceNormal [(getPosATL _newObject1) select 0,(getPosATL _newObject1) select 1]);
_newObject1 setPos (getpos _newObject1);
// _newObject1 setVectorDirAndUp [[-0.752788,0.658084,-0.01534], [0.00479631,0.0287867,0.999574]];
sleep 2;
_newUnit = createVehicle [_type, [_xx - 5,_yy - 3,_zz], [], 0, 'CAN_COLLIDE'];
_newUnit setFuel 0;
// _newUnit = createVehicle ['pook_9K331_TAK', [_xx,_yy - 6,_zz], [], 0, 'CAN_COLLIDE'];
(driver _newUnit) disableAI "MOVE";
(gunner _newUnit) disableAI "MOVE";
(commander _newUnit) disableAI "MOVE";
createVehicleCrew _newUnit;