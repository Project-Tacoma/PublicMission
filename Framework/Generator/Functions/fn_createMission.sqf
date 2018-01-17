#include "..\..\..\script_common_macros.hpp"


private _missiontypes = [
  ["DroneDestroy", "any"]
  //,["TankDestroy", "street"]
  //,["HighValueTarget", "house"]
];

private _mission = selectRandom _missiontypes;

_mission
