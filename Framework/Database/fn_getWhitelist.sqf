params["_player", "_clientID"];

_result = call compile (DB format["0:sql:getPlayer:%1", getPlayerUID _player]);
_result = [_result] call FUNC(getResult);
[_player,"pta_player",_result] remoteExec [QFUNC(receiveData), _clientID];
