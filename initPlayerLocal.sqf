#include "script_common_macros.hpp"
/*
 * Author: [1st ECOM] flaver
 * Local player init
 *
 */

params["_player"];
//Add respawn eh
//[player] call framework_fnc_onRespawn;

//Check if we have the user allready
[player, owner player] remoteExec[QFUNC(getPlayer),2];

//Add TFAR check!
if (!(PT_Dev)) then {
  [_player] call FUNC(checkTFARConnection);
};
