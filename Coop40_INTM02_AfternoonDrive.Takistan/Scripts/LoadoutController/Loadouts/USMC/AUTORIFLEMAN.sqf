private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_USMC_T";
_unit addVest 			"MNP_Vest_USMC";
_unit addBackpack 		"B_Kitbag_rgr";
_unit addHeadgear 		"MNP_Helmet_USMC";
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

(vestContainer _unit) addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",1];
(vestContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag", 3];
(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",1];

(backpackContainer _unit) addItemCargoGlobal ["ACE_SpareBarrel",1];
(backpackContainer _unit) addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 2];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",1];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",1];
_unit addWeaponGlobal "CUP_lmg_m249_pip2";
_unit addWeaponGlobal "CUP_hgun_M9";

// Add Attachments

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);