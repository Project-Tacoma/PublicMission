#include "..\..\script_common_macros.hpp"
params["_sector"];

{
  _taskName = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "name");
  _taskDesc = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "dec");
  _taskMarker = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "markerName");
  _units = getArray(missionConfigFile >> "CfgTaskSystem" >> _x >> "unit");
  _spawnArea = getText(missionConfigfile >> "CfgSector" >> _sector >> "marker");

  _tasks = missionNamespace getVariable[(format["pta_sector_tasks_%1", _sector]), []];
  _task = [west,[_x],[_taskDesc,_taskName,_taskMarker],getMarkerPos _taskMarker,"Created",2,true] call BIS_fnc_taskCreate;
  _tasks pushBack _x;
  missionNamespace setVariable [(format["pta_sector_tasks_%1", _sector]), _tasks];

  [_units, _spawnArea] call FUNC(spawnUnit);

  nil
} count (getArray(missionConfigFile >> "CfgSector" >> _sector >> "tasks"));
