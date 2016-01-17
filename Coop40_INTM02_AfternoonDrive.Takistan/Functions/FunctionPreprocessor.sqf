
/// Data
WP_fnc_FileExists = compileFinal preprocessFile "Functions\Data\WP_fnc_FileExists.sqf";
WP_fnc_SaveVariable = compileFinal preprocessFile "Functions\Data\WP_fnc_SaveVariable.sqf";
WP_fnc_LoadVariable = compileFinal preprocessFile "Functions\Data\WP_fnc_LoadVariable.sqf";

///	Loadouts
WP_fnc_ApplyLoadout = compileFinal preprocessFile "Functions\Loadouts\WP_fnc_ApplyLoadout.sqf";
WP_fnc_ClearLoadout = compileFinal preprocessFile "Functions\Loadouts\WP_fnc_ClearLoadout.sqf";

//Medical
WP_fnc_BloodChecker = compileFinal preprocessFile "Functions\Medical\WP_fnc_BloodChecker.sqf";
WP_fnc_CheckBloodACEAction = compileFinal preprocessFile "Functions\Medical\WP_fnc_CheckBloodACEAction.sqf";

///	Miscellaneous
WP_fnc_GetPlayerList = compileFinal preprocessFile "Functions\Miscellaneous\WP_fnc_GetPlayerList.sqf";

/// Utilities
WP_fnc_Teleport = compileFinal preprocessFile "Functions\Utilities\WP_fnc_Teleport.sqf";

player setVariable ["WP_PreprocessComplete", true];