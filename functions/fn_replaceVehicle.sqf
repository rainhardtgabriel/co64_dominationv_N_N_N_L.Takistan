params ["_pos","_dir","_vehiclestring"];
private ["_pos","_dir","_vehiclestring"];
veh = _vehiclestring createVehicle _pos;
veh setDir _dir;
veh;

