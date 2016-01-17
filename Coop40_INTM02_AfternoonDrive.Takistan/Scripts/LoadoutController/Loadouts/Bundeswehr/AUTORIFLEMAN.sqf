private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_Germany";
_unit addVest 			"MNP_Vest_Germany";
_unit addBackpack 		"B_Kitbag_rgr";
_unit addHeadgear 		"MNP_Helmet_Germany";
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

(vestContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag",2];
(vestContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag", 3];
(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",1];

(backpackContainer _unit) addItemCargoGlobal ["ACE_SpareBarrel",1];
(backpackContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag", 4];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag",1];
(uniformContainer _unit) addMagazineCargoGlobal ["16Rnd_9x21_Mag",1];
_unit addWeaponGlobal "CUP_arifle_MG36";
_unit addWeaponGlobal "hgun_Rook40_F";

// Add Attachments

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);