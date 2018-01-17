#include "..\..\..\script_common_macros.hpp"
/*
///// Task Patrol by Commander
usage: For example put the following in the init of a group in the editor.
 [this, 100, "ATTACK", "marker_attack"] spawn CATD_fnc_taskPatrol;

 at least you need to put the following in the init of a group in the editor.
  [this] spawn CATD_fnc_taskPatrol;

 [this, radius, type, target] spawn CATD_fnc_taskPatrol;

 Syntax: [copies of group, groupName, radius, type of Patrol, target Position] spawn CATD_fnc_taskPatrol

 Parameter:

	copies of group: How many copies of this group should be

	groupName: Group

	radius: Radius in Meter around starting Point. -> STANDARD is 100

	type of Patrol:
		"NORMAL" (relaxed Patrol) -> Standarf
		"DEFEND" (not so relaxed Patrol, AI is alerted)
		"ATTACK" (AI Attacks a position and patrol the area after the attack)

	target Position: where is the center of the Patrol area or area of Attack. Markername is also possible, but put it in "". Standard is leader of the group

*/

private ["_group", "_copies", "_radius", "_type", "_target","_range","_side","_groupHandover"];

_group = _this select 0;
_groupHandover = _this select 0;
if (typeName _group == "ARRAY") then {
	_group = (_this select 0) select 0;
	_copies = (_this select 0) select 1;
	_range = (_this select 0) select 2;
	} else {
	_group = _this select 0;
		};

if (count _this > 1) then
	{
	_radius = _this select 1;
		} else {
	_radius = 100;
	};

if (count _this > 2) then
	{
	_type = _this select 2;
		} else {
	_type = "NORMAL";
	};

if (count _this > 3) then
	{
	if (typeName (_this select 3) == "STRING") then {
		_target = getMarkerPos (_this select 3);
		} else {
	_target = getPos (_this select 3);};
		} else {
	_target = getPos leader _group;
	};




switch (_type) do {
    case "NORMAL": {
		[_groupHandover, _target, _radius, 5, "LIMITED", "SAFE", "BUILDING","YELLOW","SIMULATION","NODEBUG", 50] spawn FUNC(taskPatrolFull);
		};
	case "DEFEND": {
		[_groupHandover, _target, _radius, 4, "LIMITED", "AWARE", "BUILDING","RED","SIMULATION","NODEBUG", 25] spawn FUNC(taskPatrolFull);
		};
	case "ATTACK": {
		[_groupHandover, _target, 10, 1, "FULL", "COMBAT", "NOBUILDING","RED","SIMULATION","NODEBUG", 0] spawn FUNC(taskPatrolFull);
		};
    default {
		[_groupHandover, _target, _radius, 5, "LIMITED", "SAFE", "BUILDING","YELLOW","SIMULATION","NODEBUG", 50] spawn FUNC(taskPatrolFull);
		};
};
/*
if (!isNil "_copies") then {
	_units = [];

	{
		_classname = getDescription _x select 0;
		_units pushback _classname;
		}forEach units _group;

	_side = side leader _group;

	for "_i" from 1 to _copies do {
		_target = [_target, 5, _range, 1, 0, 60, 0] call BIS_fnc_findSafePos;
		_group = [_target, _side, _units] call BIS_fnc_spawnGroup;
		sleep 3;
		_this set [0, _group];
		_this spawn CATD_fnc_taskPatrol;
	};
};
*/
