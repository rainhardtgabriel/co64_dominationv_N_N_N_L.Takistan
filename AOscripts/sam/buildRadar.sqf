_input = _this select 0;
_xx = _input select 0;
_yy = _input select 1;
_zz = _input select 2;

_newObject = createVehicle ['Land_fort_artillery_nest_EP1', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
_newObject setPos [_xx,_yy,_zz];
// _newObject setPos (getpos _newObject);
_newObject3 = createVehicle ['Land_fort_artillery_nest_EP1', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
_newObject3 setPos [_xx,_yy - 13,_zz];
_newObject3 setDir (getDir _newObject3 - 180);
// _newObject3 setPos (getpos _newObject);

_newObject1 = createVehicle ['pook_camonet_land_east_FARP5', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
// _newObject1 setDir (getDir _newObject1 - 90);
_newObject1 setPos [_xx,_yy - 5,_zz + 2];
// _newObject1 setPos (getpos _newObject);

_newObject2 = createVehicle ['pook_camonet_land_east_FARP5', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
// _newObject2 setDir (getDir _newObject1 - 90);
_newObject2 setPos [_xx,_yy - 10,_zz + 2];
// _newObject2 setPos (getpos _newObject);

_newUnit = createVehicle ['pook_pu12_tak', [_xx,_yy - 6,_zz], [], 0, 'CAN_COLLIDE'];
_newUnit setVehicleLock "LOCKED";
_newUnit = createVehicle ['pook_prv11_tak', [_xx,_yy - 14,_zz], [], 0, 'CAN_COLLIDE'];
_newUnit setVehicleLock "LOCKED";
_newUnit setDir (getDir _newUnit - 180);

_newAmmo = createVehicle ['cup_tkordnancebox_ep1', [_xx - 4,_yy - 10,_zz], [], 0, 'CAN_COLLIDE'];
_newAmmo allowDamage false;
_newAmmo = createVehicle ['land_tableplastic_01_f', [_xx - 4,_yy - 10,_zz], [], 0, 'CAN_COLLIDE'];
_newAmmo = createVehicle ['cup_a2_laptop', [_xx - 4,_yy - 10,_zz + 0.89], [], 0, 'CAN_COLLIDE'];
_newAmmo setDir ((getDir _newAmmo) - 180);
_newAmmo = createVehicle ['land_campingchair_v2_f', [_xx - 3.5,_yy - 9,_zz], [], 0, 'CAN_COLLIDE'];
_newAmmo = createVehicle ['land_campingchair_v2_f', [_xx - 4.5,_yy - 9,_zz], [], 0, 'CAN_COLLIDE'];


