params["_player"];

call compile ("extDB3" callExtension format["0:sql:savePlayer:%1:%2", name _player, getPlayerUID _player]);
