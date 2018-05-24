#include "..\..\script_common_macros.hpp"

params["_sector"];

_resources =  getArray(missionConfigfile >> "CfgSector" >> _sector >> "resource");

{
  _ticks = GVAR(Resource_Ticks);

  _tickId = [_ticks, _x] call CBA_fnc_hashGet;

  if !(_tickId == 0) then {
    [_tickId] call CBA_fnc_removePerFrameHandler;
  };
  nil
} count _resources;
