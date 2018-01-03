#include "..\..\script_common_macros.hpp"
/*
 * Author: [1st ECOM] flaver
 * creates a Task based on the infos from the cfg
 *
 * Arguments:
 * 0: _side <SIDE>
 * 1: _taskId <STRING>
 * 2: _taskInfo <ARRAY>
 * 3: _taskType <STRING>
 *
 */
params["_side","_taskid", "_taskInfo", "_taskType"];

[
  _taskid,
  _side,
  _taskInfo,
  getMarkerPos (_taskInfo select 2),
  "CREATED",
  1,
  true,
  true,
  _taskType,
  false
] call BIS_fnc_setTask;
