#include "..\..\script_common_macros.hpp"
/*
 * Author:  flaver
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

params["_namespace","_name", "_value"];

_namespace setVariable [_name, _value, true];
