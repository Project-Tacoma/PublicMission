params["_selectedUnit", "_position"];

_group = createGroup[east, true];
_units = getArray(missionConfigfile >> "CfgUnits" >> _selectedUnit >> "units");
{
  _x createUnit [_position, _group];
  nil
} foreach _units;

[_group, _position, 200, 10, "MOVE", "SAFE", "", "LIMITED", "", "this spawn CBA_fnc_searchNearby"] call CBA_fnc_taskPatrol;
