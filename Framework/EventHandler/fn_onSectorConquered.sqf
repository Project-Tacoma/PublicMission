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

/*
_sectorConquered = missionNamespace getVariable "PTA_Conquered_Sector";

{
  _conquered = _sectorConquered find _x;

  if !(_sectorConquered == -1) then {
    if(count(_conquered) == 1) {
      _mgs = format["Die Provinz: %1 ist jetzt frei!!", getText(missionConfigFile >> "CfgProvince" >> _x >> "name")];
      ["pta_sector_conquered",[_mgs]] call bis_fnc_showNotification;
      sleep 15;
    };
  };

} count getArray(missionConfigFile >> "CfgSector" >> _sector >> "province");

sleep 15;*/
_sector setMarkerColor "ColorBlufor";
[_task, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
