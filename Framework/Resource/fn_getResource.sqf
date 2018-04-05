#include "..\..\script_common_macros.hpp"

params['_type'];

_currentValue = missionNamespace getVariable [(format['PTA_Resource_%1', _type]), 0];

_currentValue
