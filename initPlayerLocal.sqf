#include "script_common_macros.hpp"
/*
 * Author: [1st ECOM] flaver
 * Local player init
 *
 */

params["_player"];

//Add respawn eh
[player] call FUNC(onRespawn);

//Check if we have the user allready
[player, owner player] remoteExec[QFUNC(getPlayer),2];

[
{!(isNil {player getVariable ["pta_player", nil]})},
{
  if (player getVariable "pta_player" isEqualTo []) then {
    cutText ["<t color='#ff0000' size='5'>DEINE UID IST NICHT IN UNSERE DATENBANK</t><br/>Dein Progress wird nicht gespeichrt!", "Plain", 2, true, true];
  };
  [player, true] remoteExec[QFUNC(displayPlayer),2];
}
] call CBA_fnc_waitUntilAndExecute;

//Add TFAR check!
if (!(PT_Dev)) then {
  [_player] call FUNC(checkTFARConnection);
};
