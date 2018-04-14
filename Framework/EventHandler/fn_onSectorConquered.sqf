#include "..\..\script_common_macros.hpp"

params["_sector"];

_sectorName = getText(missionConfigFile >> "CfgSector" >> _sector >> "name");
_sectorMarker = gettext(missionConfigFile >> "CfgSector" >> _sector >> "marker");
_rescources = "";

{
  _rescources = format["%1 %2", _rescources, _x];
  [_x] remoteExec [QFUNC(addTick), 2];

  nil
} count(getArray(missionConfigFile >> "CfgSector" >> _sector >> "resource"));

_mgs = format["Resourcen: %1", _rescources];
["pta_sector_conquered",[_mgs]] call bis_fnc_showNotification;


_sectorMarker setMarkerColor "ColorBlufor";
