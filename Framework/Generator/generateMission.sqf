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


if(isNil "count_markername") then {
	count_markername = 0;
};


private _mission = call FUNC(createMission);

private _pos = [_mission select 1] call FUNC(createLocation);
hint format ["%1", _pos];
count_markername = count_markername + 1;
_markerName = format ["MissionMarker%1",count_markername];
private _markerstr = createMarker [_markerName, _pos];
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [100,100];

// create first group
private _group = [_pos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;

[[_group, 6, 200], 300] spawn FUNC(taskPatrol);

/*
 -- create Missiontype
 -- create Location
 -- assign task
 -- create target
 -- create groups
 */
