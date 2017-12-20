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

[_side,_taskid,_taskInfo,getMarkerPos (_taskInfo select 2),true,1,true,_taskType, false] call BIS_fnc_taskCreate;
