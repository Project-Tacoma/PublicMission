#include "..\..\script_common_macros.hpp"

_resultDB = call compile (DB format["0:sql:getWhitelistAdmin"]);
_result = [_resultDB] call FUNC(getResult);
diag_log format["[PROJECT-TACOMA] DATABASE ERROR: %1", _result];
missionNamespace setVariable ["pta_whitelist_admin", _result];
