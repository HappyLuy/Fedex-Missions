private ["_unit", "_PrimaryWeapon","_PrimaryWeaponMags"];
_unit = _this select 0;
_faction = _this select 1;

// Add Apparel
_unit forceAddUniform 	"U_B_CTRG_1";
_unit addVest 			"V_PlateCarrierL_CTRG";
_unit addBackpack 		"B_Kitbag_mcamo";
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

(vestContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag",6];
(vestContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag_Tracer_Red",6];
(vestContainer _unit) addMagazineCargoGlobal ["HandGrenade",2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellGreen", 2];

(backpackContainer _unit) addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 14];
(backpackContainer _unit) addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 4];
(backpackContainer _unit) addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 4];

// Add Weapons
(uniformContainer _unit) addMagazineCargoGlobal ["30rnd_556x45_Stanag",1];
(uniformContainer _unit) addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",1];
(uniformContainer _unit) addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",1];
_unit addWeaponGlobal "CUP_arifle_L85A2_GL";
_unit addWeaponGlobal "CUP_hgun_Glock17";

// Add Attachments
_unit addPrimaryWeaponItem "CUP_optic_Eotech533Grey";

// Select Weapon
_unit selectWeapon (primaryWeapon _unit);