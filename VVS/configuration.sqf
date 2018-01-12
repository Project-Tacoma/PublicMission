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
	"C_Offroad_01_F","B_G_Offroad_01_armed_F",													//Offroad
	"I_C_Offroad_02_unarmed_F",																	//MB 4WD
	"B_CTRG_LSV_01_light_F","B_T_LSV_01_unarmed_F","B_T_LSV_01_armed_F",						//Prowler
	"I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F",											//Strider
	"B_MRAP_01_F","B_MRAP_01_hmg_F","B_MRAP_01_gmg_F",											//Hunter	
	"B_Truck_01_mover_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F",	//HEMTT
	"B_Truck_01_medical_F","B_Truck_01_Repair_F","B_Truck_01_fuel_F","B_Truck_01_ammo_F",
	"rhsusf_m1025_d","rhsusf_m1025_d_m2","rhsusf_m1025_d_Mk19","rhsusf_m998_d_2dr",				//HUMVEE
	"rhsusf_m998_d_2dr_halftop","rhsusf_m998_d_2dr_fulltop","rhsusf_m998_d_4dr",
	"rhsusf_m998_d_4dr_halftop","rhsusf_m998_d_4dr_fulltop",
	"rhsusf_mrzr4_d",																			//SOV
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M1084A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M1117_D",																			//MRAP
	"rhsusf_M1220_usarmy_d",
	"rhsusf_M1220_M153_M2_usarmy_d",
	"rhsusf_M1220_M2_usarmy_d",
	"rhsusf_M1220_MK19_usarmy_d",
	"rhsusf_M1230_M2_usarmy_d",
	"rhsusf_M1230_MK19_usarmy_d",
	"rhsusf_M1230a1_usarmy_d",
	"rhsusf_M1232_usarmy_d",
	"rhsusf_M1232_M2_usarmy_d",
	"rhsusf_M1232_MK19_usarmy_d",
	"rhsusf_M1237_M2_usarmy_d",
	"rhsusf_M1237_MK19_usarmy_d",
	"rhsusf_rg33_usmc_d",
	"rhsusf_rg33_m2_usmc_d",
	"rhsusf_M1078A1P2_D_fmtv_usarmy",															//TRUCK
	"rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy",
	"rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy",
	"rhsusf_M1084A1P2_D_fmtv_usarmy",
	"rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy",
	"rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy",
	"RHS_M119_D"
];
VVS_Helicopter =
[
	"RHS_MELB_H6M",
	"RHS_MELB_MH6M",
	"B_Heli_Light_01_F",																		//MH-9 Hummingbird
	"RHS_MELB_AH6M",
	"B_Heli_Light_01_dynamicLoadout_F",															//AH-9 Pawnee
	"RHS_UH1Y_d",
	"RHS_UH1Y_UNARMED_d",
	"RHS_UH1Y_FFAR_d",
	"I_Heli_light_03_unarmed_F","I_Heli_light_03_dynamicLoadout_F",								//WY-55 Hellcat
	"RHS_UH60M_d",																				
	"RHS_UH60M2_d",
	"RHS_UH60M_ESSS_d",
	"RHS_UH60M_ESSS2_d",
	"RHS_UH60M_MEV_d",
	"RHS_UH60M_MEV2_d",
	"B_Heli_Transport_01_camo_F",																//UH-80 Ghost Hawk
	"RHS_CH_47F_light",
	"B_Heli_Transport_03_unarmed_F","B_Heli_Transport_03_F",									//CH-67 Huron
	"RHS_AH1Z",
	"RHS_AH64DGrey",
	"RHS_AH64D",
	"B_Heli_Attack_01_dynamicLoadout_F"		
];
VVS_Plane =
[
	"rhsusf_f22",
	"B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F",										//F/A-181 Black Wasp II
	"RHS_A10",
	"B_Plane_CAS_01_dynamicLoadout_F",															//A-164 Whipeout
	"RHS_C130J",
	"B_T_VTOL_01_infantry_F","B_T_VTOL_01_vehicle_F","B_T_VTOL_01_armed_F"						//V-44 X Blackfish
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
	"B_MBT_01_mlrs_F",																			//Sandstorm
	"RHS_M2A2",
	"RHS_M2A2_BUSKI",
	"RHS_M2A3",
	"RHS_M2A3_BUSKI",
	"RHS_M2A3_BUSKIII",
	"RHS_M6",	
	"rhsusf_m1a1aimd_usarmy",
	"rhsusf_m1a1aim_tuski_d",
	"rhsusf_m1a2sep1d_usarmy",
	"rhsusf_m1a2sep1tuskid_usarmy",
	"rhsusf_m1a2sep1tuskiid_usarmy",
	"rhsusf_m109d_usarmy"
];
VVS_Autonomous =
[
	"B_UAV_06_F","B_UAV_06_medical_F",															//AL-6 Pelican
	"B_UAV_01_F","IB_B_UAV_01_F",																//AR-2 Darter
	"B_UGV_01_F","B_UGV_01_rcws_F",																//UGV Stomper
	"B_T_UAV_03_F",																				//MQ-12 Falcon
	"B_UAV_02_dynamicLoadout_F","B_UAV_02_CAS_F",												//MQ4A Greyhawk
	"B_UAV_05_F"																				//UCAV Sentinel
];
VVS_Support =
[
	"ACE_Wheel","ACE_Track","FlexibleTank_01_sand_F","Land_PlasticCase_01_small_F",				//ACE
	"ACE_medicalSupplyCrate_advanced","ACE_ConcertinaWireCoil",
	"RoadCone_F","RoadBarrier_F","Land_PortableLight_single_F",
	"RHS_M2StaticMG_MiniTripod_D",
	"RHS_M2StaticMG_D",
	"RHS_MK19_TriPod_D",
	"RHS_TOW_TriPod_D",
	"RHS_Stinger_AA_pod_D",
	"B_static_AT_F","B_static_AA_F",
	"B_Mortar_01_F",
	"RHS_M252_D"
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