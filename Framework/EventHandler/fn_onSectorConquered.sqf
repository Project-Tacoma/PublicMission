#include "..\..\script_common_macros.hpp"

params["_sector"];

_sectorName = getText(missionConfigFile >> "CfgSector" >> _sector >> "name");
_rescources = "";
{
  _rescources = format["%1 %2", _rescources, _x];
  nil
} count(getArray(missionConfigFile >> "CfgSector" >> _sector >> "resource"));

hint format["Sekro: %1 wurde eingenommen. Resourcen: %2", _sectorName, _rescources];
_sector setMarkerColor "ColorBlufor";
