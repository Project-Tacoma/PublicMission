params["_side","_taskid", "_taskInfo", "_taskType"];

[_side,_taskid,_taskInfo,getMarkerPos (_taskInfo select 2),true,1,true,_taskType, false] call BIS_fnc_taskCreate;
