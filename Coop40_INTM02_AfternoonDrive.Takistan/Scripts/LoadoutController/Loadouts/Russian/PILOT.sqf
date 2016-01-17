private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_RO3_Rg";
_unit addVest 			"V_TacVest_oli";
_unit addBackpack 		"ACE_NonSteerableParachute";
_unit addHeadgear 		"H_PilotHelmetHeli_O";
_unit addGoggles 		"G_Combat";

//Add Items
_Items = ["ItemMap","ItemWatch","ItemCompass","ItemGPS"];
{_unit addItem _x;_unit assignItem _x;} forEach _items;

//Add Radios
_unit addItemToVest 	"ACRE_PRC148";
_unit addItemToVest 	"ACRE_PRC148";

// Add Equipment
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",8];
(uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer _unit) addItemCargoGlobal ["ACE_epinephrine",2];
(uniformContainer _unit) addItemCargoGlobal ["ACE_cableTie",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer _unit) addMagazineCargoGlobal ["Chemlight_blue",2];
(uniformContainer _unit) addMagazineCargoGlobal ["SmokeShell", 2];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_64Rnd_9x19_Bizon_M",1];
_unit addWeaponGlobal "CUP_smg_bizon";

// Add Magazines
(vestContainer _unit) addMagazineCargoGlobal ["CUP_64Rnd_9x19_Bizon_M",2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellBlue", 2];

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);