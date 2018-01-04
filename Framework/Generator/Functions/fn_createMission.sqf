#include "..\..\..\script_common_macros.hpp"


private _missiontypes = [
  ["HighValueTarget", "house"]
  //,["TankDestroy", "street"]
  //,["DroneDestroy", "any"]
];

private _mission = selectRandom _missiontypes;

_mission
