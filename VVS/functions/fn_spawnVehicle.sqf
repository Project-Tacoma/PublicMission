/*
	File: fn_spawnVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Spawns the selected vehicle, if a vehicle is already on the spawn point
	then it deletes the vehicle from the spawn point.
*/
disableSerialization;
private["_position","_direction","_className","_displayName","_spCheck","_cfgInfo"];
if(lnbCurSelRow 38101 == -1) exitWith {systemchat "No vehicle selected"};

_className = lnbData[38101,[(lnbCurSelRow 38101),0]];
_displayName = lnbData[38101,[(lnbCurSelRow 38101),1]];
_position = getMarkerPos VVS_SP;
_direction = markerDir VVS_SP;

//Make sure the marker exists in a way.
if(isNil "_position") exitWith {hint "The spawn point marker doesn't exist?";};

//Check to make sure the spawn point doesn't have a vehicle on it, if it does then delete it.
_spCheck = nearestObjects[_position,["landVehicle","Air","Ship","Thing","Static"],3];
if(!isNil "_spCheck") then {{deleteVehicle _x} forEach _spCheck;};

sleep 0.1;

_cfgInfo = [_className] call VVS_fnc_cfgInfo;

_vehicle = _className createVehicle _position;
_vehicle allowDamage false;
_vehicle setPos _position; //Make sure it gets set onto the position.
_vehicle setDir _direction; //Set the vehicles direction the same as the marker.

if((_cfgInfo select 4) == "Autonomous") then
{
	createVehicleCrew _vehicle;
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
_vehicle allowDamage true;

_additional = switch (_className)
do
{
	case "B_UAV_02_F":							{_nil = [_vehicle] spawn {_uav = _this select 0; while {alive _uav} do {_uav setFuel 1; sleep 60}};};
	case "B_UAV_02_CAS_F":						{_nil = [_vehicle] spawn {_uav = _this select 0; while {alive _uav} do {_uav setFuel 1; sleep 60}};};
	case "I_MRAP_03_F":							{[_vehicle, ["Blufor",1], true] call BIS_fnc_initVehicle;};
	case "I_MRAP_03_hmg_F":						{[_vehicle, ["Blufor",1], true] call BIS_fnc_initVehicle;};
	case "I_MRAP_03_gmg_F":						{[_vehicle, ["Blufor",1], true] call BIS_fnc_initVehicle;};
	case "I_Heli_light_03_dynamicLoadout_F":	{[_vehicle, ["Green",1], ["GunL_Revolving",1,"GunR_Revolving",1]] call BIS_fnc_initVehicle;};
	case "O_Boat_Armed_01_hmg_F":				{[_vehicle, ["Blufor",1], true] call BIS_fnc_initVehicle;};
	case "B_Heli_Transport_03_unarmed_F":		{[_vehicle, ["Green",1], ["Minigun_Hide_Source",0,"AddCargoHook_COver",0]] call BIS_fnc_initVehicle;};
	case "B_HMG_01_A_F":						{createVehicleCrew _vehicle;};
	case "B_GMG_01_A_F":						{createVehicleCrew _vehicle;};
	default {[]};
};

closeDialog 0;