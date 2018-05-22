#include "..\..\script_common_macros.hpp"
[{
   params["_args", "_idPFH"];

   _sectors = missionNamespace getVariable "PTA_Conquered_Sector";

   if !(_sectors isEqualTo []) then {

     _sector = selectRandom _sectors;

     _sectorMarker = gettext(missionConfigFile >> "CfgSector" >> _sector >> "marker");
     [["pta_inf_squad", "pta_inf_squad"], _sectorMarker, "PTA_ATTACK"] call FUNC(spawnUnit);
     _sectors deleteAt (_sectors find _sector);
     _mgs = format["Sector %1 is under attack!", _sector];
     ["pta_sector_conquered",[_mgs]] call bis_fnc_showNotification;
     missionNamespace setVariable ["PTA_Conquered_Sector", _sectors];
   };

}, 120, []] call CBA_fnc_addPerFrameHandler;
