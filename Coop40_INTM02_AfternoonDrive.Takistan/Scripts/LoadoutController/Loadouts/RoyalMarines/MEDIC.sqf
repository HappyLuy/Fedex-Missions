private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"MNP_CombatUniform_DDPMR";
_unit addVest 			"V_PlateCarrierL_CTRG";
_unit addBackpack 		"CUP_B_Bergen_BAF";
_unit addHeadgear 		"MNP_Beret_RM";
_unit addGoggles 		"G_Lowprofile";

//Add Items
_Items = ["ItemMap","ItemWatch","ItemCompass"];
{_unit addItem _x;_unit assignItem _x;} forEach _items;

//Add Radios
_unit addItemToUniform 	"ACRE_PRC343";
_unit addItemToVest 	"ACRE_PRC148";

// Add Equipment
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",4];
(uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",4];
(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",4];
(uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot",4];
(uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer _unit) addItemCargoGlobal ["ACE_epinephrine",2];
(uniformContainer _unit) addItemCargoGlobal ["ACE_cableTie",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer _unit) addMagazineCargoGlobal ["Chemlight_blue",2];
(uniformContainer _unit) addMagazineCargoGlobal ["SmokeShell", 2];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",2];

(vestContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag",6];
(vestContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag_Tracer_Red",6];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellGreen", 2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell", 2];

(backpackContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",20];
(backpackContainer _unit) addItemCargoGlobal ["ACE_packingBandage",20];
(backpackContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",20];
(backpackContainer _unit) addItemCargoGlobal ["ACE_quikclot",20];
(backpackContainer _unit) addItemCargoGlobal ["ACE_epinephrine",12];
(backpackContainer _unit) addItemCargoGlobal ["ACE_morphine",12];
(backpackContainer _unit) addItemCargoGlobal ["ACE_atropine",12];
(backpackContainer _unit) addItemCargoGlobal ["ACE_salineIV_500",6];
(backpackContainer _unit) addItemCargoGlobal ["ACE_tourniquet",4];
(backpackContainer _unit) addItemCargoGlobal ["ACE_personalAidKit",5];
(backpackContainer _unit) addItemCargoGlobal ["ACE_surgicalKit",1];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag",1];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",1];
_unit addWeaponGlobal "CUP_arifle_L85A2";
_unit addWeaponGlobal "CUP_hgun_Glock17";
_unit addWeaponGlobal "binocular";

// Add Attachments
_unit addPrimaryWeaponItem "CUP_optic_Eotech533Grey";

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);

//Add Insignia
[_unit,"MedA"] call bis_fnc_setUnitInsignia;