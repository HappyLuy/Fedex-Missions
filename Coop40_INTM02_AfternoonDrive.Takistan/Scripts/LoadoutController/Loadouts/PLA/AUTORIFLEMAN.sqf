private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_China";
_unit addVest 			"MNP_Vest_ChinaH_T";
_unit addBackpack 		"MNP_B_FieldPack_PLA_Basic";
_unit addHeadgear 		"MNP_Helmet_PAGST_CN";
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
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_10Rnd_9x19_Compact",2];

(vestContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2];

(backpackContainer _unit) addItemCargoGlobal ["ACE_SpareBarrel",1];
(backpackContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",4];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_10Rnd_9x19_Compact",1];
_unit addWeaponGlobal "CUP_lmg_PKM";
_unit addWeaponGlobal "CUP_hgun_Compact";

// Add Attachments

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);