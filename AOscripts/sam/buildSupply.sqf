_input = _this select 0;
_xx = _input select 0;
_yy = _input select 1;
_zz = _input select 2;

_newObject = createVehicle ['Land_fort_artillery_nest_EP1', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
_newObject setPos [_xx,_yy,_zz];
_newObject setPos (getpos _newObject);

_newObject1 = createVehicle ['pook_camonet_land_east_FARP5', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
// _newObject1 setDir (getDir _newObject1 - 90);
_newObject1 setPos [_xx,_yy - 4,_zz + 2];
// _newObject1 setPos (getpos _newObject);

_newObject2 = createVehicle ['pook_camonet_land_east_FARP5', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
// _newObject2 setDir (getDir _newObject1 - 90);
_newObject2 setPos [_xx,_yy - 8,_zz + 2];
// _newObject2 setPos (getpos _newObject);

_newUnit = createVehicle ['cup_o_ural_refuel_tka', [_xx - 2.5,_yy - 8,_zz], [], 0, 'CAN_COLLIDE'];
_newUnit = createVehicle ['cup_o_ural_reammo_tka', [_xx + 2.5,_yy - 8,_zz], [], 0, 'CAN_COLLIDE'];
