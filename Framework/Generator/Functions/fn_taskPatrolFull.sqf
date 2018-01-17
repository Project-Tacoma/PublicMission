#include "..\..\..\script_common_macros.hpp"
/*
///// Task Patrol by Commander
usage: For example put the following in the init of a group in the editor.

 [this, getPos player, 110, 5, "LIMITED", "SAFE", "BUILDING","YELLOW","SIMULATION","DEBUG"] spawn CATD_fnc_taskPatrolFull;

 Syntax: [groupName, target Position, radius, waypoints, speed, behaviour, buildings, combat mode, enableDynamicSimulation, debug] spawn CATD_fnc_taskPatrol

 Parameter:
	groupName: Group

	target Position: where is the center of the Patrol area

	radius: Radius in Meter around starting Point

	speed: Speed of the Group
		"LIMITED"
		"NORMAL"
		"FULL"

	behaviour: The unit behaviour
		"UNCHANGED"
		"CARELESS"
		"SAFE"
		"AWARE"
		"COMBAT"
		"STEALTH"

	buildings: Wapoints in buldings or not. Possible values:
		"BUILDING"
		"NOBUILDING")

	combat mode: combat mode.
		"NO CHANGE" (No change)
		"BLUE" (Never fire)
		"GREEN" (Hold fire - defend only)
		"WHITE" (Hold fire, engage at will)
		"YELLOW" (Fire at will)
		"RED" (Fire at will, engage at will)

	enableDynamicSimulation: Turns on the Dynamic Simulation Performance from BIS
		"SIMULATION" (Group will make use of the DynamicSimulation)
		"NOSIMUALTION" (Group will NOT make use of the DynamicSimulation)

	debug: Turns on or off the debugging
		"DEBUG" (Turns on debugging)
		"NODEBUG" (Turns off debugging)

*/

if(!isServer) exitWith {};

params ["_group", "_target","_radius","_wpNumber","_move","_behave","_building","_combatMode","_simulation","_debugging","_cityRand"];
private ["_building_pos","_position", "_count_building_pos"];

private _formation = ["NO CHANGE","COLUMN","STAG COLUMN","WEDGE","ECH LEFT","ECH RIGHT","VEE","LINE","FILE","DIAMOND"];

_debug = false;
if (_debugging == "DEBUG") then {_debug = true;};


//_group_init_pos = getPos leader _group;


//_group = _this select 0;
if (typeName _group == "ARRAY") then {
	_group = (_this select 0) select 0;
	_group2 = (_this select 0) select 0;
	_copies = (_this select 0) select 1;
	_range = (_this select 0) select 2;
	//hint format ["%1", _range];

	_units = [];

	{
		_classname = getDescription _x select 0;
		_units pushback _classname;
		_units pushbackUnique (typeOf objectParent _x);
		}forEach units _group;

	_side = side leader _group;

	for "_i" from 1 to _copies do {
		private _target2 = [_target, 5, _range, 1, 0, 60, 0] call BIS_fnc_findSafePos;
		_group = [_target2, _side, _units] call BIS_fnc_spawnGroup;
		sleep 3;
		_this set [0, _group];
		_this set [1, _target2];
		_this spawn FUNC(taskPatrolFull);
	};
	_group = _group2;
	} else {
	_group = _this select 0;
		};

private _position_leader = getPos leader _group;

if (_simulation == "SIMULATION") then {_group enableDynamicSimulation true;};

//Solange die Gruppe noch lebt, werden weitere Wegpunkt hinzugefügt sobald keine mehr da sind.
while {{ alive _x } count units _group > 0 } do {

	_position_leader = getPos leader _group;

	if (count (waypoints _group) == currentWaypoint _group) then {
		if (_debug) then {hint "neue Wegpunkte";};
			{
			deleteWaypoint _x;
			} forEach waypoints _group;

		for "_i" from 1 to _wpNumber do {
			//_position = [_group_init_pos, _radius] call CBA_fnc_randPos;

			_position = [_target, 1, _radius, 2, 0, 30, 0] call BIS_fnc_findSafePos;

			if (count _position == 3) then
				{
				for "_y" from 1 to 100 do {
					_radius + 5;
					_position = [_target, 1, _radius, 1, 0, 60, 0] call BIS_fnc_findSafePos;
					if (count _position == 2) exitWith {};
					if (_debug) then {hint format["keine Wegpunkte \n%1",_y];};
					sleep 0.3;
					};
				if (count _position == 3) exitWith {hint "keine Position";};
				};

			private _random = floor random 100;

			if (_debug) then {hint format ["RANDOM %1", _random];};

			_wp = _group addWaypoint [_position,0];

			if (_random < _cityRand && _building == "BUILDING") then {

				_building_id = nearestBuilding _position;

				if ((_position distance (getPos _building_id)) < 30) then {
					if (_debug) then {hint "kleiner 30";};
					_wp setWaypointPosition [_position, 0];
					_building_pos = nearestBuilding _position buildingPos -1;
					_position = selectRandom _building_pos;
					_count_building_pos = count _building_pos;

					if (_debug) then {hint format ["Building Pos Anzahl %1", _count_building_pos];};

					_wp setWaypointHousePosition floor (random _count_building_pos);
					_wp waypointAttachObject _building_id;

					};
				};

			_wp setWaypointBehaviour _behave;
			_wp setWaypointFormation selectRandom _formation;
			_wp setWaypointCombatMode _combatMode;
			_wp setWaypointSpeed _move;

			sleep 2;
			};
		};

	sleep random [15,20,25];

	if (_position_leader distance getPos leader _group < 4) then {
		{
			deleteWaypoint _x;
			} forEach waypoints _group;
		};

	if (_debug) then {hint format ["Gruppe %1 am leben", _group];};

	};


if (_debug) then {hint "tot";};

_group deleteGroupWhenEmpty true;
