
params["_player"];

_player addEventHandler ["Respawn", {
    _player = _this select 0;
    _wtickets = [west] call BIS_fnc_respawnTickets;
    if (side _player == west) then {hint format ["NATO HAS %1",_wtickets];};
}];
