//Init databse
call framework_fnc_connector;

pt_running_query = false;
pt_result_content = nil;

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

["pt_onSendQuery", {
  [_this select 0] spawn framework_fnc_onSendQuery;
}] call CBA_fnc_addEventHandler;
