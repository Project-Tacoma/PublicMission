params["_taskId"];

[_taskId, "SUCCEEDED"] spawn BIS_fnc_taskSetState;

private _currentTickets = call framework_fnc_getTicket;
private _newTickets = _currentTickets + (getNumber(missionConfigFile >> "CfgTaskSystem" >> _taskId >> "reward"));
[_newTickets] call framework_fnc_setTicket;
call framework_fnc_showTicket;
