/*
	File: fn_buildCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Builds our configuration arrays for vehicles to display.
	
	0: classname
	1: scope
	2: picture
	3: displayname
	4: vehicleclass
	5: side
	6: faction
*/
private["_CfgCar","_CfgAir","_CfgMaritime","_CfgSub","_CfgArmor"];
_Cfg = configFile >> "CfgVehicles";


//Setup our final arrays.
VVS_pre_Car = [];
VVS_pre_Helicopter = [];
VVS_pre_Plane = [];
VVS_pre_Maritime = [];
VVS_pre_Armored = [];
VVS_pre_Autonomous = [];
VVS_pre_Support = [];

//Skim over and make sure VVS_x isn't built for a pre-made vehicle list.
if(count VVS_Car > 0) then {VVS_pre_Car = VVS_Car;};
if(count VVS_Helicopter > 0) then {VVS_pre_Car = VVS_Helicopter;};
if(count VVS_Plane > 0) then {VVS_pre_Car = VVS_Plane;};
if(count VVS_Maritime > 0) then {VVS_pre_Car = VVS_Maritime;};
if(count VVS_Armored > 0) then {VVS_pre_Car = VVS_Armored;};
if(count VVS_Autonomous > 0) then {VVS_pre_Autonomous = VVS_Autonomous;};
if(count VVS_Support > 0) then {VVS_pre_Support = VVS_Support;};

if(VVS_Premade_List) exitWith {}; //No need to waste CPU processing time as the mission designer already setup a list.

for "_i" from 0 to (count _Cfg)-1 do
{
	_class = _Cfg select _i;
	if(isClass _class) then
	{
		_className = configName _class;
		if(_className != "") then
		{
		//	systemChat _className;
			_cfgInfo = [_className] call VVS_fnc_cfgInfo;
			//systemChat str(_cfgInfo);
			if(count _cfgInfo > 0) then
			{
				_scope = _cfgInfo select 1;
				_picture = _cfgInfo select 2;
				_displayName = _cfgInfo select 3;
				_vehicleClass = _cfgInfo select 4;
				_side = _cfgInfo select 5;	
				_superClass = _cfgInfo select 7;
				if(_scope >= 2 && _picture != "" && _displayName != "" && _vehicleClass in ["Car","Maritime","Helicopter","Plane","Armored","Autonomous","Support"] && !(_className in VVS_R_Car) && !(_superClass in VVS_R_Car)
				&& !(_className in VVS_R_Helicopter) && !(_superClass in VVS_R_Helicopter)
				&& !(_className in VVS_R_Plane) && !(_superClass in VVS_R_Plane)
				&& !(_className in VVS_R_Maritime) && !(_superClass in VVS_R_Maritime)
				&& !(_className in VVS_R_Armored) && !(_superClass in VVS_R_Armored)
				&& !(_className in VVS_R_Autonomous) && !(_superClass in VVS_R_Autonomous)
				&& !(_className in VVS_R_Support) && !(_superClass in VVS_R_Support)
				) then
				{
					switch(_vehicleClass) do
					{
						case "Car": 
						{
							if(count VVS_Car == 0) then 
							{
								VVS_pre_Car set[count VVS_pre_Car,_className];
							}
						};
						
						case "Helicopter":
						{
							if(count VVS_Helicopter == 0) then 
							{
								VVS_pre_Helicopter set[count VVS_pre_Helicopter,_className];
							};
						};
						
						case "Plane":
						{
							if(count VVS_Plane == 0) then 
							{
								VVS_pre_Plane set[count VVS_pre_Plane,_className];
							};
						};
						
						case "Maritime":
						{
							if(count VVS_Maritime == 0) then 
							{
								VVS_pre_Maritime set[count VVS_pre_Maritime,_className];
							};
						};
						
						case "Armored":
						{
							if(count VVS_Armored == 0) then 
							{
								VVS_pre_Armored set[count VVS_pre_Armored,_className];
							};
						};
						
						case "Autonomous":
						{
							if(count VVS_Autonomous == 0) then
							{
								VVS_pre_Autonomous set[count VVS_pre_Autonomous,_className];
							};
						};
						
						case "Support":
						{
							if(count VVS_Support == 0) then
							{
								VVS_pre_Support set[count VVS_pre_Support,_className];
							};
						};
					};
				};
			};
		};
	};
};