#include "..\..\..\script_common_macros.hpp"

/*
 * Author: Commander
 * [Description]
 *
 * Arguments:
 * 0: Position [ARRAY]
 *
 * Return Value:
 * TaskID
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

params ["_pos"];

INC(count_markername);

private _markerName = format ["MissionMarker%1",count_markername];

private _markerstr = createMarker [_markerName, _pos];
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [0,0];



INC(count_tasks);

private _taskId = format ["task_%1", count_tasks];

private _task = [west,[_taskId],["Die Drohne muss zerstoert werden, bevor sie abtransportiert wird.","Zerstoeren Sie die Drohne!",_markerstr],getMarkerPos _markerstr,"Created",2,true] call BIS_fnc_taskCreate;

_taskId
