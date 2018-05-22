#include "script_common_macros.hpp"
/*
 * Author:  flaver
 * Local player init
 *
 */

//Check if the player chan access the slot
/*
 private _allUIDs = ["12315123123", "1323145123123123"];
 private _slots = ["p1"];
 if (str player in _slots && !{getPlayerUID player in _allUIDs}) then {
     ["You are not entitled to use this slot!"] call BIS_fnc_infoText;
     sleep 30;
     ["end1",false] call BIS_fnc_endMission;
 };*/

//Add respawn eh
[player] call FUNC(onRespawn);

//Check if we have the user allready
[player, owner player] remoteExec [QFUNC(getPlayer),2];

[
  {
    !(isNil {player getVariable ["pta_player", nil]})
  },
{
  if (player getVariable "pta_player" isEqualTo []) then {
    [player] remoteExec[QFUNC(savePlayer),2];
    cutText [format["<t color='#ff0000' size='5'>Willkommen %1, dein Player wurde erfolgreich erstellt</t><br/> Viel Spass auf dem Server!", name player], "Plain", 2, true, true];
  };
  [player, true] remoteExec[QFUNC(displayPlayer),2];
}
] call CBA_fnc_waitUntilAndExecute;

#ifndef PT_Dev
//Add TFAR check!
[_player] call FUNC(checkTFARConnection);
#endif

call FUNC(initHud);
