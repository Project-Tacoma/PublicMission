/*	Garage Script by by Ian Bones
 *	init :		_nul = [this, "Markername", "VehicleType"] execVM "IB\scripts\Garage.sqf";
 *	select 0:	Object
 *	select 1:	Markername
 *	select 2:	VehicleType: "All", "Car", "Helicopter", "Plane", "Maritime", "Armored", "Autonomous", "Support"
 *	
 *	
 *	
 *	
 */

 
_garage = _this select 0;
_marker = _this select 1;
_vehicleType = _this select 2;



_garage enableRopeAttach false;

_iconType = switch (_vehicleType)
do
{
	case "All":			{""};
	case "Car":			{"\a3\ui_f\data\gui\Rsc\RscDisplayGarage\car_ca.paa"};
	case "Helicopter":	{"\a3\ui_f\data\gui\Rsc\RscDisplayGarage\helicopter_ca.paa"};
	case "Plane":		{"\a3\ui_f\data\gui\Rsc\RscDisplayGarage\plane_ca.paa"};
	case "Maritime":	{"\a3\ui_f\data\gui\Rsc\RscDisplayGarage\naval_ca.paa"};
	case "Armored":		{"\a3\ui_f\data\gui\Rsc\RscDisplayGarage\tank_ca.paa"};
	case "Autonomous":	{"\a3\drones_f\Air_F_Gamma\UAV_01\Data\UI\UAV_01_CA.paa"};
	case "Support":		{"\a3\ui_f\data\gui\Rsc\RscDisplayGarage\static_ca.paa"};
	default {""};
};

_action1_0 = ["VVS", format ["VVS %1", _vehicleType], _iconType,
{
	["", "", "", (_this select 2)] call VVS_fnc_openVVS;
},{true}, {}, [_marker, _vehicleType], [0,0,0.2], 5] call ace_interact_menu_fnc_createAction;
[_garage, 0, [], _action1_0] call ace_interact_menu_fnc_addActionToObject;

if (_vehicleType == "All")
then
{
	_action1_1 = ["VVS_Car","Car","\a3\ui_f\data\gui\Rsc\RscDisplayGarage\car_ca.paa",
	{
		["", "", "", (_this select 2)] call VVS_fnc_openVVS;
	},{true}, {}, [_marker, "Car"], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
	[_garage, 0, ["VVS"], _action1_1] call ace_interact_menu_fnc_addActionToObject;
	
	_action1_2 = ["VVS_Helicopter","Helicopter","\a3\ui_f\data\gui\Rsc\RscDisplayGarage\helicopter_ca.paa",
	{
		["", "", "", (_this select 2)] call VVS_fnc_openVVS;
	},{true}, {}, [_marker, "Helicopter"], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
	[_garage, 0, ["VVS"], _action1_2] call ace_interact_menu_fnc_addActionToObject;
	
	_action1_3 = ["VVS_Plane","Plane","\a3\ui_f\data\gui\Rsc\RscDisplayGarage\plane_ca.paa",
	{
		["", "", "", (_this select 2)] call VVS_fnc_openVVS;
	},{true}, {}, [_marker, "Plane"], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
	[_garage, 0, ["VVS"], _action1_3] call ace_interact_menu_fnc_addActionToObject;
	
	_action1_4 = ["VVS_Maritime","Maritime","\a3\ui_f\data\gui\Rsc\RscDisplayGarage\naval_ca.paa",
	{
		["", "", "", (_this select 2)] call VVS_fnc_openVVS;
	},{true}, {}, [_marker, "Maritime"], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
	[_garage, 0, ["VVS"], _action1_4] call ace_interact_menu_fnc_addActionToObject;
	
	_action1_5 = ["VVS_Armored","Armored","\a3\ui_f\data\gui\Rsc\RscDisplayGarage\tank_ca.paa",
	{
		["", "", "", (_this select 2)] call VVS_fnc_openVVS;
	},{true}, {}, [_marker, "Armored"], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
	[_garage, 0, ["VVS"], _action1_5] call ace_interact_menu_fnc_addActionToObject;
	
	_action1_6 = ["VVS_Autonomous","Autonomous","\a3\drones_f\Air_F_Gamma\UAV_01\Data\UI\UAV_01_CA.paa",
	{
		["", "", "", (_this select 2)] call VVS_fnc_openVVS;
	},{true}, {}, [_marker, "Autonomous"], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
	[_garage, 0, ["VVS"], _action1_6] call ace_interact_menu_fnc_addActionToObject;
	
	_action1_7 = ["VVS_Support","Support","\a3\ui_f\data\gui\Rsc\RscDisplayGarage\static_ca.paa",
	{
		["", "", "", (_this select 2)] call VVS_fnc_openVVS;
	},{true}, {}, [_marker, "Support"], [0, 0, 0], 5] call ace_interact_menu_fnc_createAction;
	[_garage, 0, ["VVS"], _action1_7] call ace_interact_menu_fnc_addActionToObject;
};

_action2_0 = ["VVS_Delete", "Delete Vehicle", _iconType,
{
    _marker = _this select 2 select 0;
    _junk = nearestObjects [(getMarkerPos _marker), [], 6];
    if !(_junk isEqualTo []) then {
        {
            deleteVehicle _x
        } forEach _junk;
    };
},{true}, {}, [_marker], [0,0,0.4], 5] call ace_interact_menu_fnc_createAction;
[_garage, 0, [], _action2_0] call ace_interact_menu_fnc_addActionToObject;

if (typeOf _garage in ["Box_IND_AmmoVeh_F","Box_EAST_AmmoVeh_F","Box_NATO_AmmoVeh_F"]) then
{
	_lamp = "Land_PortableLight_single_F" createVehicleLocal position _garage;
	_lamp allowDamage false;
	_lamp enableSimulation true;
	[_lamp, false] call ace_dragging_fnc_setDraggable; 
	[_lamp, false] call ace_dragging_fnc_setCarryable;
	_lamp setPos [getPos _garage select 0, getPos _garage select 1, (getPos _garage select 2) + 1.5];
	_lamp setDir (([_lamp, getMarkerPos _marker] call BIS_fnc_dirTo) + 180);
};

_markerType = switch (_vehicleType)
do
{
	case "All":			{"b_unknown"};
	case "Car":			{"b_motor_inf"};
	case "Helicopter":	{"b_air"};
	case "Plane":		{"b_plane"};
	case "Maritime":	{"b_naval"};
	case "Armored":		{"b_armor"};
	case "Autonomous":	{"b_uav"};
	case "Support":		{"b_support"};
	default {"b_unknown"};
};

if (_vehicleType == "All")
then
{
	_vehicleType = "VVS"
};

_markername = format["%1%2", _marker, _vehicleType];
_sign = createMarkerLocal [_markername, [getPos _garage select 0, getPos _garage select 1]];
_sign setMarkerTypeLocal _markerType;
_sign setMarkerTextLocal _vehicleType;
_sign setMarkerAlphaLocal 0.3;
_sign setMarkerColorLocal "ColorBlack";
_sign setMarkerSizeLocal [0.8,0.8];