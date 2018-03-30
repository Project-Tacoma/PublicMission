#include "..\..\script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * Event will be triggerd only on server
 *
 * Arguments:
 * 0: _player <OBJECT>
 * 2: _type <STRING>
 */

params["_player", "_type"];

//@AS_TODO fir the moment okay, but later we need to make this a little more dynamic
if (_type == "pt_civ_killed") then {
    private _currentTickets = call FUNC(getTicket);
    private _newTickets = _currentTickets - getNumber(missionConfigFile >> "CfgTicketSystem" >> "civPunish");
    [_newTickets] call FUNC(setTicket);
} else {
    private _currentTickets = call FUNC(getTicket);
    private _newTickets = _currentTickets - getNumber(missionConfigFile >> "CfgTicketSystem" >> "death");
    [_newTickets] call FUNC(setTicket);
};

//show the new tickets
call FUNC(showTicket);
