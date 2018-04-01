#include "script_common_macros.hpp"
/*
 * Author: [NRF] flaver
 * Local player init
 *
 */

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

cutRsc ["Pta_UI", "PLAIN"];
call FUNC(initHud);
