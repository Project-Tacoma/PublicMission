_units = [];
{
  _units set[(count _units),_x];
  nil
} count getArray(missionConfigfile >> "CfgUnits" >> "groups");

missionNamespace setVariable ["pta_commander_units", _units];
