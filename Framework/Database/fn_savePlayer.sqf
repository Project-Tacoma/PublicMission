params["_player"];

_result = [_player] framework_fnc_getPlayer;

if !((_result select 1) isEqualTo []) then {
    diag_log "WE HAVE A PLAYER ALREADY!";
    _player setVariable ["PT_PLAYER_UID", _result select 1 select 0 select 0, true];
} else {
    call compile ("extDB3" callExtension format["0:sql:savePlayer:%1:%2", name _player, getPlayerUID _player]);
    diag_log "WE HAVE NOT THE PLAYER ALREADY!";
    _player setVariable ["PT_PLAYER_UID", getPlayerUID _player, true];
};
