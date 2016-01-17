//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// CSAT (A3) - Opfor
	case 0:
	{
		_Unit_Pool_S = ["O_crew_F","O_Helipilot_F","O_Soldier_SL_F","O_soldier_AR_F","O_soldier_AR_F","O_soldier_exp_F","O_soldier_GL_F","O_soldier_GL_F","O_soldier_M_F","O_medic_F","O_soldier_AA_F","O_soldier_repair_F","O_Soldier_F","O_Soldier_F","O_soldier_LAT_F","O_soldier_LAT_F","O_soldier_lite_F","O_soldier_TL_F","O_soldier_TL_F"];
		_Unit_Pool_V = ["O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F"];
		_Unit_Pool_T = ["O_MBT_02_arty_F","I_APC_Wheeled_03_cannon_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_cannon_F","O_APC_Tracked_02_AA_F"];
		_Unit_Pool_A = ["O_Heli_Attack_02_F","O_Heli_Light_02_F","O_Heli_Light_02_armed_F"];
	};
//-------------------------------------------------------------------------------------------------
// NATO (A3) - Blufor
	case 1:
	{
		_Unit_Pool_S = ["B_crew_F","B_Helipilot_F","B_Soldier_SL_F","B_soldier_AR_F","B_soldier_AR_F","B_soldier_exp_F","B_soldier_GL_F","B_soldier_GL_F","B_soldier_AA_F","B_soldier_M_F","B_soldier_repair_F","B_Soldier_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT_F","B_soldier_lite_F","B_soldier_TL_F","B_soldier_TL_F"];
		_Unit_Pool_V = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
		_Unit_Pool_T = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
		_Unit_Pool_A = ["B_Heli_Light_01_armed_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_F"];
	};
//-------------------------------------------------------------------------------------------------
// Altis Armed Forces (A3) - Greenfor
	case 2:
	{
		_Unit_Pool_S = ["I_crew_F","I_helipilot_F","I_Soldier_F","I_Soldier_AT_F","I_Soldier_AA_F","I_Soldier_M_F","I_Soldier_GL_F","I_Soldier_exp_F","I_engineer_F","I_Soldier_AR_F","I_Soldier_A_F","I_Soldier_F","I_Soldier_F","I_Soldier_F"];
		_Unit_Pool_V = ["I_Truck_02_covered_F","I_Truck_02_transport_F"];
		_Unit_Pool_T = ["I_MBT_03_cannon_F","I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
		_Unit_Pool_A = ["I_Heli_light_03_F"];
	};
//-------------------------------------------------------------------------------------------------
// Greek Civilians (A3) - Civilians
	case 3:
	{
		_Unit_Pool_S = ["C_man_1","C_man_1","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F"];
		_Unit_Pool_V = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
		_Unit_Pool_T = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
		_Unit_Pool_A = [];
	};
//-------------------------------------------------------------------------------------------------
// British Armed Forces MTP (CUP) - Blufor
	case 4:
	{
		_Unit_Pool_S = ["CUP_B_BAF_Crew_MTP","CUP_B_BAF_Pilot_MTP","CUP_B_BAF_SL_MTP","CUP_B_BAF_TL_MTP","CUP_B_BAF_AR_MTP","CUP_B_BAF_AT_MTP","CUP_B_BAF_GL_MTP","CUP_B_BAF_AAR_MTP","CUP_B_BAF_AAT_MTP","CUP_B_BAF_Marksman_MTP","CUP_B_BAF_Scout_MTP","CUP_B_BAF_Soldier_MTP","CUP_B_BAF_Soldier_MTP","CUP_B_BAF_Soldier_MTP","CUP_B_BAF_MG_MTP","CUP_B_BAF_JTAC_MTP"];
		_Unit_Pool_V = ["CUP_B_LR_Transport_GB_D","CUP_B_LR_MG_W","CUP_B_Jackal2_L2A1_GB_D"];
		_Unit_Pool_T = ["CUP_B_Jackal2_GMG_GB_D"];
		_Unit_Pool_A = ["CUP_B_AW159_Unarmed_BAF","CUP_B_AW159_Armed_BAF","CUP_B_AH1_MR_BAF","CUP_B_AH1_ES_BAF","CUP_Merlin_HC3","CUP_B_CH47F_GB"];
	};
//-------------------------------------------------------------------------------------------------
// Chernarus Defence Force (CUP) - Blufor
	case 5:
	{
		_Unit_Pool_S = ["CUP_B_CDF_Crew","CUP_B_CDF_Pilot","CUP_B_CDF_Soldier_TL","CUP_B_CDF_Soldier_AR","CUP_B_CDF_Soldier_LAT","CUP_B_CDF_Soldier_GL","CUP_B_CDF_Soldier_Marksman","CUP_B_CDF_Soldier_MG","CUP_B_CDF_Soldier_Light","CUP_B_CDF_Soldier","CUP_B_CDF_Soldier","CUP_B_CDF_Soldier"];
		_Unit_Pool_V = ["CUP_B_BRDM2_CDF","CUP_B_BRDM2_ATGM_CDF","CUP_B_BRDM2_HQ_CDF","CUP_B_UAZ_Unarmed_CDF","CUP_B_UAZ_AGS30_CDF","CUP_B_UAZ_MG_CDF","CUP_B_UAZ_Open_CDF","CUP_B_UAZ_SPG9_CDF","CUP_B_Ural_Empty_CDF","CUP_B_Ural_Open_CDF"];
		_Unit_Pool_T = ["CUP_B_BMP2_CDF","CUP_B_BMP_HQ_CDF","CUP_B_T72_CDF","CUP_B_ZSU23_CDF"];
		_Unit_Pool_A = ["CUP_B_Mi17_CDF","CUP_B_Mi24_CDF"];
	};
//-------------------------------------------------------------------------------------------------
// Czech Armed Forces (CUP) - Blufor
	case 6:
	{
		_Unit_Pool_S = ["CUP_B_CZ_Crew_WDL","CUP_B_CZ_Pilot_WDL","CUP_B_CZ_SL_WDL","CUP_B_CZ_AR_WDL","CUP_B_CZ_AT_WDL","CUP_B_CZ_MG_WDL","CUP_B_CZ_RPG_WDL","CUP_B_CZ_Engineer_WDL","CUP_B_CZ_Soldier_805_WDL","CUP_B_CZ_AMG_WDL","CUP_B_CZ_Soldier_805_GL_WDL","CUP_B_CZ_Marksman_WDL","CUP_B_CZ_Soldier_WDL","CUP_B_CZ_Soldier_WDL","CUP_B_CZ_Soldier_805_WDL"];
		_Unit_Pool_V = ["CUP_B_Dingo_WDL","CUP_B_Dingo_GL_WDL","CUP_B_HMMWV_AGS_GPK_ACR","CUP_B_HMMWV_DSHKM_GPK_ACR","UP_B_HMMWV_M2_GPK_ACR","CUP_B_LR_MG_CZ_W","CUP_B_LR_Special_CZ_W","CUP_B_LR_Transport_CZ_W","CUP_B_UAZ_Unarmed_ACR","CUP_B_UAZ_AGS30_ACR","CUP_B_UAZ_MG_ACR","CUP_B_UAZ_Open_ACR","CUP_B_UAZ_SPG9_ACR"];
		_Unit_Pool_T = [];
		_Unit_Pool_A = ["CUP_B_Mi171Sh_ACR","CUP_B_Mi171Sh_Unarmed_ACR","CUP_B_Mi35_CZ"];
	};
//-------------------------------------------------------------------------------------------------
// German KSK  (CUP) - Blufor
	case 7:
	{
		_Unit_Pool_S = ["CUP_B_GER_Soldier","B_Helipilot_F","CUP_B_GER_Soldier_TL","CUP_B_GER_Soldier_MG","CUP_B_GER_Soldier_AT","CUP_B_GER_Soldier_Ammo","CUP_B_GER_Soldier_AAT","CUP_B_GER_Soldier_Engineer","CUP_B_GER_Soldier_01","CUP_B_GER_Soldier_02","CUP_B_GER_Soldier_03"];
		_Unit_Pool_V = [];
		_Unit_Pool_T = [];
		_Unit_Pool_A = [];
	};
//-------------------------------------------------------------------------------------------------
// United States Army (CUP) - Blufor
	case 8:
	{
		_Unit_Pool_S = ["CUP_B_US_Crew","CUP_B_US_Pilot","CUP_B_US_Soldier_SL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_Marksman","CUP_B_US_Soldier_LAT","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_AAR","CUP_B_US_Soldier_AAT","CUP_B_US_Soldier_AMG","CUP_B_US_Engineer","CUP_B_US_Soldier","CUP_B_US_Soldier","CUP_B_US_Soldier"];
		_Unit_Pool_V = ["CUP_B_HMMWV_Unarmed_USA","CUP_B_HMMWV_Crows_M2_USA","CUP_B_HMMWV_Crows_MK19_USA","CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_M2_USA","CUP_B_HMMWV_MK19_USA","CUP_B_HMMWV_SOV_USA","CUP_B_HMMWV_TOW_USA","CUP_B_HMMWV_Transport_USA"];
		_Unit_Pool_T = ["CUP_B_M1A1_DES_US_Army","CUP_B_M1A2_TUSK_MG_DES_US_Army","CUP_B_M2Bradley_USA_D","CUP_B_M2A3Bradley_USA_D"];
		_Unit_Pool_A = ["CUP_B_AH64D_MR_D","CUP_B_AH64D_ES_D","CUP_B_UH60L_US","CUP_B_UH60L_FFV_US","CUP_B_UH60M_US","CUP_B_UH60M_FFV_US"," CUP_B_CH47F_USA","MELB_MH6M","MELB_AH6M_L"];
	};
//-------------------------------------------------------------------------------------------------
// United States Marine Corps (CUP) - Blufor
	case 9:
	{
		_Unit_Pool_S = ["CUP_B_USMC_Crew","CUP_B_USMC_Pilot","CUP_B_USMC_Soldier_SL","CUP_B_USMC_Soldier_TL","CUP_B_USMC_Soldier_AR","CUP_B_USMC_Soldier_AT","CUP_B_USMC_Soldier_GL","CUP_B_USMC_Soldier_Marksman","CUP_B_USMC_Soldier_LAT","CUP_B_USMC_Soldier","CUP_B_USMC_Soldier_01","CUP_B_USMC_Soldier_02","CUP_B_USMC_Soldier_03"];
		_Unit_Pool_V = ["CUP_B_HMMWV_Unarmed_USMC","CUP_B_HMMWV_M2_USMC","CUP_B_HMMWV_MK19_USMC","CUP_B_HMMWV_TOW_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_LAV25_HQ_USMC","CUP_B_LAV25M240_USMC","CUP_B_LAV25_USMC"];
		_Unit_Pool_T = ["CUP_B_AAV_USMC","CUP_B_M1A1_Woodland_USMC","CUP_B_M1A2_TUSK_MG_USMC"];
		_Unit_Pool_A = ["CUP_B_AH1Z","CUP_B_AH1Z_Escort","CUP_B_CH53E_USMC","CUP_B_MH60S_FFV_USMC","CUP_B_UH1Y_UNA_USMC","CUP_B_UH1Y_GUNSHIP_USMC"];
	};
//-------------------------------------------------------------------------------------------------
//  DPR (K_MNP)
	case 10:
	{
		_Unit_Pool_S = [["MNP_DPR_Soldier_F",1],["MNP_DPR_Soldier_F",1],["MNP_DPR_Soldier_TL",1],["MNP_DPR_Soldier_F",1],["MNP_DPR_Soldier_AR",4],["MNP_DPR_Soldier_GR",2],["MNP_DPR_Soldier_AT",3],["MNP_DPR_Soldier_F",1],["MNP_DPR_Soldier_F",1]];
		_Unit_Pool_V = ["CUP_B_UAZ_Unarmed_CHDKZ","CUP_B_UAZ_AGS30_CHDKZ","CUP_B_UAZ_MG_CHDKZ","CUP_B_UAZ_Open_CHDKZ","CUP_B_UAZ_SPG9_CHDKZ","CUP_B_Ural_Empty_CHDKZ","CUP_B_Ural_Open_CHDKZ"];
		_Unit_Pool_T = ["CUP_B_BMP2_CHDKZ","CUP_B_BMP_HQ_CHDKZ","CUP_B_T72_CHDKZ","CUP_B_ZSU23_CHDKZ"];
		_Unit_Pool_A = ["CUP_O_Mi8_CHDKZ"];
	};
//-------------------------------------------------------------------------------------------------
// Fallback
	Default
	{
		if(DAC_Basic_Value != 5) then
		{
			DAC_Basic_Value = 5; publicvariable "DAC_Basic_Value";
			hintc "Error: DAC_Config_Units > No valid config number";
		};
		if(true) exitwith {};
	};
};

if(count _this == 2) then
{
	_TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
	_TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray