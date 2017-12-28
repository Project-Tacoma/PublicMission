//Init databse
//call framework_fnc_connector;

//

//Set tickets
missionNamespace setVariable ["Tickets", getNumber(missionConfigFile >> "CfgTicketSystem" >> "tickets")];

//Init tasks
//for the moment just select the first opertion
//Later get that from db
_ops    = getArray(missionConfigFile >> "CfgTaskSystem" >> "PT_Operations" >> "operations") select 0;
_tasks  = getArray(missionConfigFile >> "CfgTaskSystem" >> "PT_Operations" >> _ops >> "tasks");

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
  ] call framework_fnc_createTask;

} count _tasks;

//Add Costum EH's
["pt_onTicketLose", {
  [_this select 0, _this select 1] call framework_fnc_onTicketLose;
}] call CBA_fnc_addEventHandler;

["pt_onTaskCompleted", {
  [_this select 0] call framework_fnc_onTaskCompleted;
}] call CBA_fnc_addEventHandler;
