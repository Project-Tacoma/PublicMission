#include "..\..\script_common_macros.hpp"
/*
 * Author: [1st]Commander
 * Generate a task
 *
 * Arguments:
 * None
 *
 * Return Value:
 *
 *
 * Example:
 *
 *
 * Public: [Yes/No]
 */

//nummer des Markers
if(isNil "count_markername") then {
	count_markername = 0;
};

if(isNil "count_tasks") then {
	count_tasks = 0;
};




private _mission = call FUNC(createMission);

private _pos = [_mission select 1] call FUNC(createLocation);

private _task = [_pos] call FUNC(generateTask);


//_markerstr setMarkerAlpha 0;

// create first groups
private _group = [_pos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;

[[_group,3,60] , 130] spawn FUNC(taskPatrol);
sleep 5;
[[_group,15,850] , 250] spawn FUNC(taskPatrol);

// create outer groups
//private _group2 = [_pos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;

//[[_group2, 10, 450] , 300] spawn FUNC(taskPatrol);

_drone = "O_UAV_02_dynamicLoadout_F" createVehicle _pos;

sleep 4;
//["task1"] call BIS_fnc_taskSetCurrent;

waitUntil {
	sleep 2;
	damage _drone > 0.1;
};

//"Drohne zerstoert" remoteExec ["hint"];
sleep 10;
 [_task, "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
	{
  if(side _x == East) then {
		_x setDamage 1;
	};
} forEach allUnits;



"Ab nach Hause" remoteExec ["hint"];

/*
 -- create Missiontype
 -- create Location
 -- assign task
 -- create target
 -- create groups
 */
