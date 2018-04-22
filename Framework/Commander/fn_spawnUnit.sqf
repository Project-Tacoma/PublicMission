params["_selectedUnit", "_position"];

_group = createGroup[east, true];
_units = getArray(missionConfigfile >> "CfgUnits" >> _selectedUnit >> "units");
_position = [_position, _rad] call CBA_fnc_randPos;

_formation = [
  "COLUMN",
  "STAG COLUMN",
  "LINE"
];

{
  _x createUnit [_position, _group];
  nil
} count _units;

[_group, _position, 200, 10, "MOVE", "SAFE", "YELLOW", "LIMITED", (selectRandom _formation)] call CBA_fnc_taskPatrol;
