#include "script_common_macros.hpp"

//Init databse
call FUNC(connector);

//Set mission vars
missionNamespace setVariable ["Tickets", getNumber(missionConfigFile >> "CfgTicketSystem" >> "tickets")];
missionNamespace setVariable ["PTA_Conquered_Sector", []];
missionNamespace setVariable ["PTA_Resource_Fuel", 10];
missionNamespace setVariable ["PTA_Resource_Kerosene", 15];
missionNamespace setVariable ["PTA_Resource_Diesel", 20];

//Init whitelist
call FUNC(getWhitelist);

//Init sector
call FUNC(initSector);

//Init task watcher
call FUNC(taskWatcher);

//Add Costum EH's
["pta_onTicketLose", {
  [_this select 0, _this select 1] call FUNC(onTicketLose);
}] call CBA_fnc_addEventHandler;

["pta_onTaskCompleted", {
  [_this select 0] call FUNC(onTaskCompleted);
}] call CBA_fnc_addEventHandler;

["pta_onSectorConquered", {
  [_this select 0, _this select 1] call FUNC(onSectorConquered);
}] call CBA_fnc_addEventHandler;

["pta_onUnitInSector", {
  [_this select 0] call FUNC(onUnitInSector);
}] call CBA_fnc_addEventHandler;
