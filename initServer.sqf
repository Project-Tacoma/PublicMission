//Init databse
//call framework_fnc_connector;

//Set tickets
missionNamespace setVariable ["Tickets", getNumber(missionConfigFile >> "CfgTicketSystem" >> "tickets")];

//Init tasks
_tasks = getArray(missionConfigFile >> "CfgTaskSystem" >> "tasks");
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

["pt_onCreateUser", {
  [_this select 0] call framework_fnc_onCreateUser;
}] call CBA_fnc_addEventHandler;
