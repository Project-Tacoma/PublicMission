params["_selectedUnits", "_area"];

{
  _group = createGroup[east, true];
  _units = getArray(missionConfigfile >> "CfgUnits" >> _x >> "units");
  _rad = getMarkerSize _area select 0;
  _position = [_area, _rad] call CBA_fnc_randPos;

  _formation = [
    "COLUMN",
    "STAG COLUMN",
    "LINE"
  ];

  {
    _x createUnit [_position, _group];
    nil
  } count _units;

  [_group, _position, _rad, 20, "MOVE", "SAFE", "YELLOW", "LIMITED", (selectRandom _formation)] call CBA_fnc_taskPatrol;
  nil
} count _selectedUnits;
