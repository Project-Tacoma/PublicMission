#include "..\..\script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * Session that saves data from server
 *
 * Arguments:
 * 0: _name <STRING>
 * 1: _value <ANY>
 *
 * Return Value:
 * void
 *
 */

params["_name", "_value"];

player setVariable [_name, _value, true];
