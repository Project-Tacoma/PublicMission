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
private _mission = call FUNC(createMission);

[_mission select 0, _mission select 1] call FUNC(createLocation);


/*
 -- create Missiontype
 -- create Location
 -- assign task
 -- create target
 -- create groups
 */
