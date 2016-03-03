_input = _this select 0;
_xx = _input select 0;
_yy = _input select 1;
_zz = _input select 2;


// 1st sa20 static
_newObject = createVehicle ['Land_fort_artillery_nest_EP1', [_xx,_yy,_zz], [], 0, 'CAN_COLLIDE']; 
_newObject setPos [_xx,_yy,_zz];


_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx - 13.5,_yy - 0.5,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) - 225);
// _newObject setPos [_xx,_yy,_zz];

_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx + 13.5,_yy - 0.5,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) + 225);


_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx - 18.75,_yy - 13,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) + 90);

_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx + 18.75,_yy - 13,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) - 90);

// c&c radar
_newObject = createVehicle ['pook_9S36_TAK', [_xx + 5,_yy - 25,_zz], [], 0, 'NONE'];

_newObject = createVehicle ['pook_PU12_TAK', [_xx - 5,_yy - 25,_zz], [], 0, 'NONE'];

_newObject2 = createVehicle ['pook_camonet_land_east_FARP5', [_xx + 6.5,_yy - 20,_zz + 2], [], 0, 'CAN_COLLIDE'];
_newObject2 allowDamage false;
_newObject2 setDir ((getDir _newObject2) - 90);

_newObject2 = createVehicle ['pook_camonet_land_east_FARP5', [_xx - 6,_yy - 25,_zz + 2], [], 0, 'CAN_COLLIDE']; 
_newObject2 allowDamage false;
_newObject2 setDir ((getDir _newObject2) - 90);

// center table
_newAmmo = createVehicle ['cup_tkordnancebox_ep1', [_xx,_yy - 25,_zz], [], 0, 'CAN_COLLIDE'];
_newAmmo allowDamage false;
_newAmmo = createVehicle ['land_tableplastic_01_f', [_xx,_yy - 25,_zz], [], 0, 'CAN_COLLIDE'];

_newAmmo = createVehicle ['land_campingchair_v2_f', [_xx + 0.5,_yy - 26,_zz], [], 0, 'CAN_COLLIDE'];
_newAmmo setDir ((getDir _newAmmo) - 180);
_newAmmo = createVehicle ['land_campingchair_v2_f', [_xx - 0.5,_yy - 26,_zz], [], 0, 'CAN_COLLIDE'];
_newAmmo setDir ((getDir _newAmmo) - 180);

_newAmmo = createVehicle ['land_campingchair_v2_f', [_xx + 0.5,_yy - 24,_zz], [], 0, 'CAN_COLLIDE'];
// _newAmmo setDir ((getDir _newAmmo) - 90);
_newAmmo = createVehicle ['land_campingchair_v2_f', [_xx - 0.5,_yy - 24,_zz], [], 0, 'CAN_COLLIDE'];

_newAmmo = createVehicle ['cup_a2_laptop', [_xx + 0.5,_yy - 25.25,_zz + 0.89], [], 0, 'CAN_COLLIDE'];
_newAmmo = createVehicle ['cup_a2_laptop', [_xx - 0.5,_yy - 24.75,_zz + 0.89], [], 0, 'CAN_COLLIDE'];
_newAmmo setDir ((getDir _newAmmo) - 180);

_newObject2 = createVehicle ['pook_camonet_land_east_FARP5', [_xx,_yy - 25,_zz + 2], [], 0, 'CAN_COLLIDE']; 
_newObject2 allowDamage false;
_newObject2 setDir ((getDir _newObject2) - 90);

_newObject2 = createVehicle ['pook_camonet_land_east_FARP5', [_xx,_yy - 34,_zz + 2], [], 0, 'CAN_COLLIDE']; 
_newObject2 allowDamage false;

// opposite site
_newObject = createVehicle ['Land_fort_artillery_nest_EP1', [_xx,_yy - 45,_zz], [], 0, 'CAN_COLLIDE']; 
_newObject setDir ((getDir _newObject) + 180);

// _newUnit = createVehicle ['pook_SA20_static_TAK', [_xx,_yy - 40,_zz], [], 0, 'NONE'];
// _newUnit allowDamage false;
// _newUnit setDir ((getDir _newUnit) + 184);
// _newUnit setVehicleLock "LOCKED";
// _newUnit allowDamage true;

_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx + 13.5,_yy + 0.5  - 40,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) - 225 - 180);

// _newObject setPos [_xx,_yy,_zz];

_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx - 13.5,_yy + 0.5  - 40,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) + 225 + 180);


_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx + 18.75,_yy - 27,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) + 90 + 180);

_newObject = createVehicle ['pook_Land_fort_rampart_DES', [_xx - 18.75,_yy - 36,_zz], [], 0, 'CAN_COLLIDE'];
_newObject setDir ((getDir _newObject) + 22.5);

_newObject = createVehicle ['Land_fort_artillery_nest_EP1', [_xx - 25,_yy - 25,_zz], [], 0, 'CAN_COLLIDE']; 
_newObject setDir ((getDir _newObject) - 90);

// radar

_newObject = createVehicle ['pook_30N6E2_TAK', [_xx - 20,_yy - 29,_zz], [], 0, 'NONE']; 
_newObject setDir ((getDir _newObject) - 67.5);

_newObject2 = createVehicle ['pook_camonet_land_east_FARP5', [_xx - 14,_yy - 31,_zz + 2], [], 0, 'CAN_COLLIDE']; 
_newObject2 allowDamage false;

_newUnit = createVehicle ['pook_SA20_static_TAK', [_xx,_yy - 10,_zz], [], 0, 'NONE'];
_newUnit allowDamage false;
_newUnit setVehicleLock "LOCKED";
_newUnit allowDamage true;

_newUnit = createVehicle ['pook_SA20_static_TAK', [0,0,10000], [], 0, 'NONE'];
_newUnit allowDamage false;
_newUnit setDir ((getDir _newUnit) + 184);
_newUnit setPos [_xx,_yy - 40,_zz];
_newUnit setVehicleLock "LOCKED";
_newUnit allowDamage true;

