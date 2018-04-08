#include "..\..\script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * This will parse the result
 *
 * Arguments:
 * 0: _dbValues <ARRAY>
 *
 * Return Value:
 * _result <ANY>
 *
 */
 params["_dbValues"];

_status = _dbValues select 0;

//Check for error
if (_status == 0) exitWith {
  diag_log format["[PROJECT-TACOMA] DATABASE ERROR: %1", _status];
  false
};

diag_log format["[PROJECT-TACOMA] DATABASE ERROR: %1", _dbValues select 1];

_result = _dbValues select 1;

_result
