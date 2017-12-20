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
