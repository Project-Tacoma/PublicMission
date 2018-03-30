#include "..\..\script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * EH gets triggerd when task is completed
 *
 * Arguments:
 * 0: _taskId <STRING>
 *
 * Return Value:
 * void
 *
 */

params["_taskId"];

[_taskId, "SUCCEEDED"] spawn BIS_fnc_taskSetState;

private _currentTickets = call FUNC(getTicket);
private _newTickets = _currentTickets + (getNumber(missionConfigFile >> "CfgTaskSystem" >> _taskId >> "reward"));
[_newTickets] call FUNC(setTicket);
call FUNC(showTicket);
