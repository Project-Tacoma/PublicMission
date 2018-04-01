#include "..\..\script_common_macros.hpp"

params["_sector"];

{

  _taskName = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "name");
  _taskDesc = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "desc");
  _taskMarker = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "markerName");
  _taskCond = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "winCond");

  _task = [west,[_x],[_taskDesc,_taskName], getMarkerPos _taskMarker,"Created",2,true] call BIS_fnc_taskCreate;
  private _trg = createTrigger ["EmptyDetector", getPos player];
  _trg setTriggerArea [0, 0, 0, false];
  _trg setTriggerStatements [_taskCond, format["[""pta_onSectorConquered"", ['%1', '%2']] call CBA_fnc_globalEvent",_sector, _x], ""];

  nil
} count(getArray(missionConfigFile >> "CfgSector" >> _sector >> "tasks"));
