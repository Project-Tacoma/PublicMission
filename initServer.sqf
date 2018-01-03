#include "script_common_macros.hpp"

//Init databse
call FUNC(connector);

//

//Set tickets
missionNamespace setVariable ["Tickets", getNumber(missionConfigFile >> "CfgTicketSystem" >> "tickets")];

//Init tasks
//for the moment just select the first opertion
//Later get that from db
_tasks  = getArray(missionConfigFile >> "CfgTaskSystem" >> "tasks");

{
  [
  west,
  [_x],
  [
    getText (missionConfigFile >> "CfgTaskSystem" >> _x >> "desc"),
    getText (missionConfigFile >> "CfgTaskSystem" >> _x >> "name"),
    getText (missionConfigFile >> "CfgTaskSystem" >> _x >> "markerName")
  ],
  getText (missionConfigFile >> "CfgTaskSystem" >> _x >> "taskType")
  ] call FUNC(createTask);

} count _tasks;

//Add Costum EH's
["pta_onTicketLose", {
  [_this select 0, _this select 1] call FUNC(onTicketLose);
}] call CBA_fnc_addEventHandler;

["pta_onTaskCompleted", {
  [_this select 0] call FUNC(onTaskCompleted);
}] call CBA_fnc_addEventHandler;
