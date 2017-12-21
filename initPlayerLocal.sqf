//Add respawn eh
[player] call framework_fnc_onRespawn;

//Check if we have the user allready
["pt_onSendQuery",["getPlayer",[getPlayerUID player]]] call CBA_fnc_serverEvent;



//["pt_onCreateUser",[player]] call CBA_fnc_serverEvent;
