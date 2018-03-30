#include "..\..\script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * Sets the status for the website. So if we display him or not
 *
 * Arguments:
 * 0: _player <OBJECT>
 * 1: _display <BOOLEAN>
 *
 * Return Value:
 * void
 *
 */

params["_player", "_dislay"];

_value = 0;
if (_dislay) then {
  _value = 1;
};
call compile (DB format["0:sql:displayPlayer:%1:%2", _value, getPlayerUID _player]);
