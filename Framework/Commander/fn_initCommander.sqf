#include "..\..\script_common_macros.hpp"

_units = [];
{
  _units set[(count _units),_x];
  nil
} count getArray(missionConfigfile >> "CfgUnits" >> "groups");

missionNamespace setVariable ["pta_commander_units", _units];

//Init sector watcher
call FUNC(sectorWatcher);
