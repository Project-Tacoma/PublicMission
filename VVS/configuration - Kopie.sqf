//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = true;

//If you are going to use Pre-set VVS Vehicles it is recommended to set this to true as it will not run through the config saving CPU resources on initialization, otherwise leave as default.
VVS_Premade_List = true;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.
		
		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/
VVS_Car =
[
	"B_Quadbike_01_F",																			//Quad
	"C_Offroad_01_F","C_Offroad_01_repair_F","B_G_Offroad_01_armed_F",							//Offroad
	"I_C_Offroad_02_unarmed_F",																	//MB 4WD
	"B_CTRG_LSV_01_light_F","B_T_LSV_01_unarmed_F","B_T_LSV_01_armed_F",						//Prowler
	"I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F",											//Strider
	"B_MRAP_01_F","B_MRAP_01_hmg_F","B_MRAP_01_gmg_F",											//Hunter	
	"B_Truck_01_mover_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F",	//HEMTT
	"B_Truck_01_medical_F","B_Truck_01_Repair_F","B_Truck_01_fuel_F","B_Truck_01_ammo_F"
];
VVS_Helicopter =
[
	"B_Heli_Light_01_F",																		//MH-9 Hummingbird
	"B_Heli_Light_01_dynamicLoadout_F",															//AH-9 Pawnee
	"I_Heli_light_03_unarmed_F","I_Heli_light_03_dynamicLoadout_F",								//WY-55 Hellcat
	"B_Heli_Transport_01_camo_F",																//UH-80 Ghost Hawk
	"B_Heli_Transport_03_unarmed_F","B_Heli_Transport_03_F",									//CH-67 Huron
	"B_Heli_Attack_01_dynamicLoadout_F"															//AH-99 Blackfoot
];
VVS_Plane =
[
	"B_T_VTOL_01_infantry_F","B_T_VTOL_01_vehicle_F","B_T_VTOL_01_armed_F",						//V-44 X Blackfish
	"B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F",										//F/A-181 Black Wasp II
	"B_Plane_CAS_01_dynamicLoadout_F"															//A-164 Whipeout
];
VVS_Maritime =
[
	"C_Scooter_transport_01_F",																	//Scooter
	"B_Boat_Transport_01_F",																	//Assaultboat
	"I_C_Boat_Transport_02_F",																	//RHIB
	"O_Boat_Armed_01_hmg_F","B_Boat_Armed_01_minigun_F",										//Speedboat
	"B_SDV_01_F"																				//SDV
];
VVS_Armored =
[
	"B_APC_Wheeled_01_cannon_F",																//Marshall
	"B_APC_Tracked_01_rcws_F",																	//Panther
	"B_APC_Tracked_01_CRV_F",																	//Bobcat
	"B_APC_Tracked_01_AA_F",																	//Cheetah
	"B_MBT_01_cannon_F","B_MBT_01_TUSK_F",														//Slammer
	"B_MBT_01_arty_F",																			//Scorcher
	"B_MBT_01_mlrs_F"																			//Sandstorm
];
VVS_Autonomous =
[
	"B_Static_Designator_01_F",																	//Remote Designator
	"B_HMG_01_A_F","B_GMG_01_A_F",																//Autonomous HMG / GMG
	"B_UAV_06_F","B_UAV_06_medical_F",															//AL-6 Pelican
	"B_UAV_01_F","IB_B_UAV_01_F",																//AR-2 Darter
	"B_UGV_01_F","B_UGV_01_rcws_F",																//UGV Stomper
	"B_T_UAV_03_F",																				//MQ-12 Falcon
	"B_UAV_02_dynamicLoadout_F","B_UAV_02_CAS_F",												//MQ4A Greyhawk
	"B_UAV_05_F"																				//UCAV Sentinel
];
VVS_Support =
[
	"Land_CanisterFuel_F","ACE_Wheel","ACE_Track","ACE_ConcertinaWireCoil",						//ACE3 (mod)
	"RoadCone_F","RoadBarrier_F","Land_PortableLight_single_F",
	"Land_WoodenBox_F","Land_WoodenCrate_01_F",													//ArmA3 Boxes
	"Box_NATO_Wps_F","Box_NATO_WpsLaunch_F","Box_NATO_Ammo_F","Box_NATO_Grenades_F",
	"Box_NATO_AmmoOrd_F","Box_NATO_Support_F","Box_NATO_WpsSpecial_F","Box_NATO_Uniforms_F",
	"Box_NATO_Equip_F","CargoNet_01_box_F","B_supplyCrate_F","Box_NATO_AmmoVeh_F",
	"B_CargoNet_01_ammo_F",
	"B_Slingload_01_Cargo_F","B_Slingload_01_Medevac_F","B_Slingload_01_Repair_F",				//Huron-Container
	"B_Slingload_01_Fuel_F","B_Slingload_01_Ammo_F",
	"Land_Cargo20_military_green_F",															//Cargo-Container
	"B_HMG_01_F","B_HMG_01_high_F","B_GMG_01_F","B_GMG_01_high_F",								//HMG / GMG
	"B_static_AT_F","B_static_AA_F",															//Static Titan AT / AA
	"B_Mortar_01_F"																				//Mortar
];

/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.
		
		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [];
VVS_R_Helicopter = [];
VVS_R_Plane = [];
VVS_R_Maritime = [];
VVS_R_Armored = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];