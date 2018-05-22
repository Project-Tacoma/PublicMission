#include "..\..\script_common_macros.hpp"
[{
   params["_args", "_idPFH"];

   _sectors = missionNamespace getVariable "PTA_Conquered_Sector";

   if !(_sectors isEqualTo []) then {

     _sector = selectRandom _sectors;

     _sectorMarker = gettext(missionConfigFile >> "CfgSector" >> _sector >> "marker");
     _units = missionNamespace getVariable "pta_commander_units";
     _numberOfGroups = round(random [5, 10, 20]);

     for[{_i = 0}, {_i < _numberOfGroups}, {_i = _i + 1}] do {
       [[selectRandom _units], _sectorMarker, "PTA_ATTACK"] call FUNC(spawnUnit);
     };
     _sectorMarker setMarkerColor "ColorYellow";
     _sectors deleteAt (_sectors find _sector);
     _mgs = format["Sector %1 is under attack!", _sector];
     ["pta_sector_conquered",[_mgs]] call bis_fnc_showNotification;
     missionNamespace setVariable ["PTA_Conquered_Sector", _sectors];
   };

}, 30, []] call CBA_fnc_addPerFrameHandler;
