#include "..\..\script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * Gets a player by his UID and sends him back to the client
 *
 * Arguments:
 * 0: _player <OBJECT>
 * 1: _clientID <NUMBER>
 *
 * Return Value:
 * _result <ARRAY>
 *
 */
params["_player", "_clientID"];

_result = call compile (DB format["0:sql:getPlayer:%1", getPlayerUID _player]);
_result = [_result] call FUNC(getResult);
[_player,"pta_player",_result] remoteExec [QFUNC(receiveData), _clientID];
