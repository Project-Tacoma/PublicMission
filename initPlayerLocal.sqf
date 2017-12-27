#include "script_common_macros.hpp"
/*
 * Author: [1st ECOM] flaver
 * Local player init
 *
 */

//Add respawn eh
//[player] call framework_fnc_onRespawn;

//Check if we have the user allready
//["pt_onSendQuery",["getPlayer",[getPlayerUID player]]] call CBA_fnc_serverEvent;

//Add TFAR check!
if (!(PT_Dev)) then {
    [player] call framework_fnc_checkTFARConnection;
};
