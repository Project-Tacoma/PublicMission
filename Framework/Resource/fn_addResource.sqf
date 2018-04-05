#include "..\..\script_common_macros.hpp"

params['_type', '_amount'];

_currentValue = missionNamespace getVariable [(format['PTA_Resource_%1', _type]), 0];
_newValue = _currentValue + _amount;

missionNamespace setVariable[(format['PTA_Resource_%1', _type]), _newValue];

remoteExec[QFUNC(updateHud), 0];
