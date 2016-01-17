//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Weapons    //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Weapon_Pool","_Magazine_Pool"];

_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
	//-------------------------------------------------------------------------------------------------
	case 1: //SA-58
	{
		_Weapon_Pool  = ["CUP_arifle_Sa58RIS1","Binocular","ItemCompass","ItemMap"];
		_Magazine_Pool = [["CUP_30Rnd_Sa58_M",6],["Smokeshell",2],["HandGrenade",2]];
	};
	case 2: //SA-58 GL
	{
		_Weapon_Pool  = ["CUP_arifle_Sa58RIS2_gl","ItemCompass","ItemMap"];
		_Magazine_Pool = [["CUP_30Rnd_Sa58_M",6],["1Rnd_HE_Grenade_shell", 8],["Smokeshell",2],["HandGrenade",2]];
	};
	case 3: //SA-58 + RPG
	{
		_Weapon_Pool  = ["CUP_arifle_Sa58RIS1","CUP_launch_RPG7V","Binocular","ItemCompass","ItemMap"];
		_Magazine_Pool = [["CUP_30Rnd_Sa58_M",6],["CUP_PG7V_M",2],["Smokeshell",2],["HandGrenade",2]];
	};
	case 4: //PKM
	{
		_Weapon_Pool  = ["CUP_lmg_PKM","ItemCompass","ItemMap"];
		_Magazine_Pool = [["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",3],["Smokeshell",2],["HandGrenade",2]];
	};

	Default
	{
		if(DAC_Basic_Value != 5) then
		{
			DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
			hintc "Error: DAC_Config_Weapons > No valid config number";
		};
		if(true) exitwith {};
	};
};

_TempArray = [_Weapon_Pool] + [_Magazine_Pool];
_TempArray