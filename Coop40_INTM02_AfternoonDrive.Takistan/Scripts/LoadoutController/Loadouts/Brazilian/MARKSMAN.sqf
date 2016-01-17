private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_AMerc_4";
_unit addVest 			"MNP_Vest_OD_A";
//_unit addBackpack 	"B_Kitbag_rgr";
_unit addHeadgear 		"MNP_Helmet_OD";
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
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",2];


(vestContainer _unit) addMagazineCargoGlobal ["CUP_5Rnd_762x51_M24",11];
(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellGreen", 2];
(vestContainer _unit) addItemCargoGlobal ["ACE_RangeCard",1];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_5Rnd_762x51_M24",1];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",1];
_unit addWeaponGlobal "CUP_srifle_M40A3";
_unit addWeaponGlobal "CUP_hgun_M9";

// Add Attachments
_unit addPrimaryWeaponItem "optic_DMS";
_unit addPrimaryWeaponItem "bipod_01_F_blk";

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);