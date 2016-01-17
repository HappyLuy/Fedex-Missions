private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_DS_A";
_unit addVest 			"MNP_Vest_DS_1";
//_unit addBackpack 	"B_Kitbag_rgr";
_unit addHeadgear 		"MNP_Helmet_DS";
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


(vestContainer _unit) addMagazineCargoGlobal ["20Rnd_762x51_Mag",5];
(vestContainer _unit) addMagazineCargoGlobal ["ACE_20Rnd_762x51_Mag_Tracer",2];
(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellGreen", 2];
(vestContainer _unit) addItemCargoGlobal ["ACE_RangeCard",1];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["20Rnd_762x51_Mag",1];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",1];
_unit addWeaponGlobal "CUP_srifle_M14_DMR";
_unit addWeaponGlobal "CUP_hgun_M9";

// Add Attachments
_unit addPrimaryWeaponItem "optic_DMS";
_unit addPrimaryWeaponItem "bipod_01_F_blk";

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);