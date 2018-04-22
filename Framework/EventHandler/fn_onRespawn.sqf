#include "..\..\script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * Event will be triggerd only on server
 *
 * Arguments:
 * 0: _player <OBJECT>
 * 2: _type <STRING>
 */

params["_player"];

_player addEventHandler ["Respawn", {
    _player = _this select 0;
    ["pta_onTicketLose", [_player, "death"]] call CBA_fnc_serverEvent;
}];
