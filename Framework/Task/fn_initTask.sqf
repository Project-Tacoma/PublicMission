params["_sector"];

{
  _taskName = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "name");
  _taskDesc = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "dec");
  _taskMarker = getText(missionConfigFile >> "CfgTaskSystem" >> _x >> "marker");
  _varName = format["pta_sector_task_%1", _sector];

  _tasks = missionNamespace getVariable[(format["pta_sector_task_%1", _sector]), []];
  _task = [west,[_varName],[_taskDesc,_taskName,_taskMarker],getMarkerPos _taskMarker,"Created",2,true] call BIS_fnc_taskCreate;
  _tasks pushBack _task;
  missionNamespace setVariable [_varName, _tasks];

  [_task, ] call FUNC(taskWatcher);
  nil
} count (getArray(missionConfigFile >> "CfgSector" >> _sector >> "tasks"));
