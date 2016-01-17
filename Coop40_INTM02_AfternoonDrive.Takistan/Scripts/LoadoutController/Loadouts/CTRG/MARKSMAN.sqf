private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"U_B_CTRG_1";
_unit addVest 			"V_PlateCarrierH_CTRG";
//_unit addBackpack 	"B_Kitbag_rgr";
_unit addHeadgear 		"H_HelmetSpecB_blk";
_unit addGoggles 		"G_Combat";

//Add Items
_Items = ["ItemMap","ItemWatch","ItemCompass"];
{_unit addItem _x;_unit assignItem _x;} forEach _items;

//Add Radios
_unit addItemToUniform 	"ACRE_PRC343";

// Add Equipment
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",8];
(uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer _unit) addItemCargoGlobal ["ACE_epinephrine",2];
(uniformContainer _unit) addItemCargoGlobal ["ACE_cableTie",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer _unit) addMagazineCargoGlobal ["Chemlight_blue",2];
(uniformContainer _unit) addMagazineCargoGlobal ["SmokeShell", 2];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",2];


(vestContainer _unit) addMagazineCargoGlobal ["CUP_20Rnd_762x51_B_M110",5];
(vestContainer _unit) addMagazineCargoGlobal ["CUP_20Rnd_TE1_Red_Tracer_762x51_M110",2];
(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellGreen", 2];
(vestContainer _unit) addItemCargoGlobal ["ACE_RangeCard",1];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_20Rnd_762x51_B_M110",1];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",1];
_unit addWeaponGlobal "CUP_srifle_M110";
_unit addWeaponGlobal "CUP_hgun_Glock17";

// Add Attachments
_unit addPrimaryWeaponItem "optic_DMS";
_unit addPrimaryWeaponItem "bipod_01_F_blk";

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);