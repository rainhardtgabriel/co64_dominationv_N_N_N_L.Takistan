_types = ["Lamps_Base_F", "CUP_A2_lamp_street2_ep1", "CUP_A2_lamp_street1_ep1", "Land_LightHouse_F", "Land_PowerPoleWooden_L_F", "Land_LampStreet_F", "Land_LampHarbour_F", "Land_LampStreet_small_F"];
_onoff = _this select 0;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // powercoverage is a marker I placed.
	_lamps = getMarkerPos "powerplant2" nearObjects [_types select _i, 3000];
	sleep 1;
	{_x setDamage _onoff} forEach _lamps;
};

