 /*
------------------------------------------------------------------------------------
by: "[TF47] TaskForce 47"

spawns sniper teams at overwatch position

parameter: [AOCenter, mindist, maxdist, number, missionType]
------------------------------------------------------------------------------------
*/

private ["_AOCenter","_minDist","_maxDist","_number","_pos","_unit","_group","_missionType"];
params ["_AOCenter","_minDist","_maxDist","_number","_missionType"];

for [{_i=1},{_i<=_number},{_i=_i+1}] do
{
	_pos = [_AOCenter, _maxDist, _minDist] call BIS_fnc_findOverwatch;

	_group = createGroup east;

	_unit = _group createUnit ["CUP_O_TK_Spotter", _pos, [], 0, "NONE"];

	if (random 1 > 0.5) then
	{
		_unit = _group createUnit ["CUP_O_TK_Sniper_KSVK", _pos, [], 0, "NONE"];
	}
	else
	{
		_unit = _group createUnit ["CUP_O_TK_Sniper", _pos, [], 0, "NONE"];
	};

	if (_missionType == 1) then
	{
		tf47_var_AOUnits pushBack [_unit];
	};

	[_unit, [0.5,0.5,0.2,0.9,0.8,1,0.8,0.5,0.5,0.3]] call LV_ACskills;
};