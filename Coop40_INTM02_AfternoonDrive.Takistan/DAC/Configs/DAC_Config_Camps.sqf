//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_CampTyp","_campBasic","_campAmmo","_campStatic","_campWall","_campObjInit",
			"_campUserObj","_campAddUnit","_campRandomObj","_Unit_Pool_C","_array"
		];

			_CampTyp = _this select 0;_array = [];

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0:
	{
		_campBasic     = ["Flag_CSAT_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,90],["Logic",10,15,0],0];
		_campAmmo      = [["Box_East_Wps_F",20,2,0],["Box_East_WpsSpecial_F",20,0,0],["Box_East_Ammo_F",20,-2,0],["Box_East_Support_F",20,-4,0]];
		_campStatic    = [["O_Mortar_01_F",-7,25,0,"O_Soldier_F"],["O_Mortar_01_F",25,25,0,"O_Soldier_F"],["O_Mortar_01_F",25,-20,180,"O_Soldier_F"],["O_Mortar_01_F",-7,-20,180,"O_Soldier_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1:
	{
		_campBasic     = ["Flag_NATO_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_NATO_Ammo_F",20,2,0],["Box_NATO_Wps_F",20,0,0],["Box_NATO_AmmoOrd_F",20,-2,0],["Box_NATO_WpsSpecial_F",20,-4,0]];
		_campStatic    = [["O_Mortar_01_F",-7,25,0,"B_Soldier_F"],["O_Mortar_01_F",25,25,0,"B_Soldier_F"],["O_Mortar_01_F",25,-20,180,"B_Soldier_F"],["O_Mortar_01_F",-7,-20,180,"B_Soldier_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 2: // Russian MSV Camp
	{
		_campBasic     = ["FlagCarrierRU",["FirePlace_burning_f",15,10,0],["Land_tent_east",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_East_Wps_F",20,2,0],["Box_East_WpsSpecial_F",20,0,0],["Box_East_Ammo_F",20,-2,0],["Box_East_Support_F",20,-4,0]];
		_campStatic    = [["O_Mortar_01_F",-2,15,0,"rhs_msv_combatcrew"],["O_Mortar_01_F",2,15,0,"rhs_msv_combatcrew"],["O_Mortar_01_F",-2,-15,0,"rhs_msv_combatcrew"],["O_Mortar_01_F",2,-15,0,"rhs_msv_combatcrew"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_fort_artillery_nest",0,20,0],["Land_fort_artillery_nest",0,-20,180],["Land_fort_artillery_nest",-20,0,270]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 3: // Greenfor Camp
		{
			_campBasic     = ["Flag_AAF",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
			_campAmmo      = [["Box_IND_Wps_F",20,2,0],["Box_IND_WpsSpecial_F",20,0,0],["Box_East_IND_F",20,-2,0],["Box_IND_Support_F",20,-4,0]];
			_campStatic    = [["O_Mortar_01_F",-2,15,0,"I_engineer_F"],["O_Mortar_01_F",2,15,0,"I_engineer_F"],["O_Mortar_01_F",-2,-15,0,"I_engineer_F"],["O_Mortar_01_F",2,-15,0,"I_engineer_F"]];
			_campAddUnit   = [];
			_campUserObj   = [];
			_campRandomObj = [];
			_campWall      = [];
			_campObjInit   = [[],[],[],[],[],[],[]];
		};
//-------------------------------------------------------------------------------------------------------------------------
	case 4: // Afghan Milita Camp
	{
		_campBasic     = ["Fort_Crate_wood",["FirePlace_burning_f",15,10,0],["Land_tent_east",0,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",-2,10,0,"LOP_AM_Soldier"],["O_Mortar_01_F",2,10,0,"LOP_AM_Soldier"],["O_Mortar_01_F",-2,-10,0,"LOP_AM_Soldier"],["O_Mortar_01_F",2,-10,0,"LOP_AM_Soldier"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Camps > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array = [_campBasic,_campAmmo,_campStatic,_campAddUnit,_campUserObj,_campRandomObj,_campWall,_campObjInit];
_array