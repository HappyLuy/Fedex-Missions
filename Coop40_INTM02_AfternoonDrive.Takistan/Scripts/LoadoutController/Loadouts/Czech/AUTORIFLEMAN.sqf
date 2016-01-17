private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_CZ_A";
_unit addVest 			"MNP_Vest_CZ_1";
_unit addBackpack 		"B_Kitbag_rgr";
_unit addHeadgear 		"MNP_Helmet_CZ";
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
(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",2];

(vestContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2];
(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",1];

(backpackContainer _unit) addItemCargoGlobal ["ACE_SpareBarrel",1];
(backpackContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 4];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",1];
(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",1];
_unit addWeaponGlobal "CUP_lmg_Mk48_wdl";
_unit addWeaponGlobal "CUP_hgun_Duty";

// Add Attachments

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);