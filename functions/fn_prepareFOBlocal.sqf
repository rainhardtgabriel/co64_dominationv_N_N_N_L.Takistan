private ["_position","_location","_direction","_dir","_angle"];

if (tf47_var_FOBStatus == 1) exitWith {hint composeText ["Die Aktion ist gerade nicht verfügbar.", lineBreak, lineBreak, "This action is currently not available."]};

if ((fobContainer1 distance fobContainer2) + (fobContainer2 distance fobContainer3) + (fobContainer1 distance fobContainer3) >60) exitWith {hint composeText ["Der Abstand der Kisten ist zu hoch.", lineBreak, lineBreak, "The distance between the containers is too high."]};

_nearRoads = fobContainer1 nearRoads 15;

_location = [0,0];
_dir = 0;
_angle = 0;

if (count _nearRoads < 0) exitWith {hint composeText ["Es sind keine Straßen in der Nähe.", lineBreak, lineBreak, "There are no roads nearby."]};

{
	_road = _x;
	_roadConnectedTo = roadsConnectedTo _road;
	_connectedRoad = _roadConnectedTo select 0;
	_dir = [_road, _connectedRoad] call BIS_fnc_DirTo;

	_roadPos = getPos _road;

	_center1 = [(_roadPos select 0) + 15*sin(_dir+90),(_roadPos select 1) + 15*cos(_dir+90)];
	_center2 = [(_roadPos select 0) + 15*sin(_dir-90),(_roadPos select 1) + 15*cos(_dir-90)];

	if ([_center1, (_dir + 90), 50, 30, 15, [player,fobcontainer1,fobcontainer2,fobcontainer3]] call tf47_fnc_isFlatEmpty == 1) then
	{
		_angle = _dir;
		_location = _roadPos;
	};
	if ([_center2, (_dir - 90), 50, 30, 15, [player,fobcontainer1,fobcontainer2,fobcontainer3]] call tf47_fnc_isFlatEmpty == 1) then
	{
		_angle = _dir + 180;
		_location = _roadPos;
	};

} forEach _nearRoads;

if (_location isEqualTo [0,0]) exitWith {hint composeText ["Das Gelände ist uneben oder nicht frei.", lineBreak, lineBreak,"The terrain is not free or empty."]};

[_location, _angle] remoteExec ["tf47_fnc_buildFOB", 2];