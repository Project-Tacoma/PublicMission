#include "..\..\script_common_macros.hpp"
/*
 * Author:  flaver
 * Check's if the user
 * has enabled the plugin
 * is on the right TS
 * is in the right channel
 *
 * Arguments:
 * 0: Argument _player <OBJECT>
 *
 * Referenc material: https://www.altisliferpg.com/topic/1054-tutorial-task-force-radio-black-screen-when-not-in-channel-etc/
 */
 params["_player"];

//Check if TFAR is loaded
 if (isNil "TFAR_fnc_isTeamSpeakPluginEnabled") exitWith {
     999999 cutText ["TFAR is not running! Please resync or reinstall and retry", "BLACK FADED"];
     999999 cutFadeOut 999999;
 };

 _tacTFEnabled = [] call TFAR_fnc_isTeamspeakPluginEnabled;

//Check if the plugin is enabled
if (!(_tacTFEnabled)) then {

  [{
     params["_args", "_idPFH"];
     _player = _args select 0;

     if ([] call TFAR_fnc_isTeamspeakPluginEnabled) exitWith {
          //disableUserInput false;
         [_idPFH] call CBA_fnc_removePerFrameHandler;
         cutText ["<t color='#ff0000' size='5'>TFAR WURDE AKTIVIERT!</t><br/>Danke :)", "Plain", 2, true, true];
     };

    titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Settings -> Plugins", "BLACK"];

  }, 2 , [_player]] call CBA_fnc_addPerFrameHandler;

};

//Global vars
PT_TFAREnabled = true;
PT_OnTsServer = "" == (call TFAR_fnc_getTeamSpeakServerName);
PT_OnChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
titleText ["TFAR is loaded!", "BLACK IN"];

//Add per frame for tfr check
[{
   params["_args", "_idPFH"];
   _player = _args select 0;

    _tacTFEnabled = [] call TFAR_fnc_isTeamspeakPluginEnabled;

   if ((!(_tacTFEnabled)) && (PT_TFAREnabled)) then {
     titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Settings -> Plugins", "BLACK"];
     PT_TFAREnabled = false;
   };

   _onTsServer = "" == (call TFAR_fnc_isTeamspeakPluginEnabled);

   if (!(_onTsServer)) then {
       titleText ["Please join the teamspeak server! Adress: 127.0.0.1", "BLACK"];
       PT_OnTsServer = false;
   } else {
     if (!(PT_OnTsServer)) then {
         titleText ["TS server check completed. Welcome!","BLACK IN"];
         PT_OnTsServer = true;
     };
   };

   _onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
   if (!(_onChannel)) then {
       titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Settings -> Plugins", "BLACK"];
       PT_OnChannel = false;
   } else {
       if (!(PT_OnChannel)) then {
           titleText ["TS server check completed. Welcome!","BLACK IN"];
           PT_OnChannel = true;
       };
   };

   if ((_tacTFEnabled) && (!(PT_TFAREnabled))) then {
      titleText ["Plugin enabled, welcome back!","BLACK IN"];
      PT_TFAREnabled = true;
   };

}, 10 , [_player]] call CBA_fnc_addPerFrameHandler;
