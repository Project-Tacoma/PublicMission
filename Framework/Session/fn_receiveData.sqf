#include "..\..\script_common_macros.hpp"
/*
 * Author: [1st ECOM] flaver
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
