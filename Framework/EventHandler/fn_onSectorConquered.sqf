#include "..\..\script_common_macros.hpp"

params["_sector", "_task"];

_sectorName = getText(missionConfigFile >> "CfgSector" >> _sector >> "name");
_rescources = "";
{
  _rescources = format["%1 %2", _rescources, _x];
  nil
} count(getArray(missionConfigFile >> "CfgSector" >> _sector >> "resource"));

_mgs = format["Resourcen: %1", _rescources];
["pta_sector_conquered",[_mgs]] call bis_fnc_showNotification;

sleep 10;
_sector setMarkerColor "ColorBlufor";
[_task, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
