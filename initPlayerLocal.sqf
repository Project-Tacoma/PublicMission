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



isConnectedOnTS = false;
warningIsOn = false;

//_isConnectedOnTS = [player] call TFAR_fnc_isTeamSpeakPluginEnabled;
//[player] remoteExec ["framework_fnc_savePlayer",2];

//["pt_onCreateUser",[player]] call CBA_fnc_serverEvent;
[{
   params["_args", "_idPFH"];

   if (isConnectedOnTS) exitWith {
        warningIsOn = false;
        //disableUserInput false;
       [_idPFH] call CBA_fnc_removePerFrameHandler;
       cutText ["<t color='#ff0000' size='5'>TFAR WURDE AKTIVIERT!</t><br/>Danke :)", "Plain", 2, true, true];
   };

   if (!warningIsOn) then {
      //disableUserInput true;
      warningIsOn = true;
      cutText ["<t color='#ff0000' size='5'>ACHTUNG!</t><br/>Du bist nicht auf unserem Teamspeak.<br /><t color='#ff0000' size='2'>TS-IP:127.0.0.1</t>", "BLACK", -1, true, true];
   };

}, 2] call CBA_fnc_addPerFrameHandler;
