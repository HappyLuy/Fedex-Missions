
diag_log "============================================== Mission Restarted ===============================================";

//Disable voices and commands
enableSentences false;
enableSaving [false, false];

//Function Preprocessor
call compile preprocessFile "Functions\FunctionPreprocessor.sqf";

//Settings
execVM "Settings\ASR_Settings.sqf";

//Player Faction
MyPlayerFaction = "Czech";
MyPlayerSide = west;

//Debug Controller
if (DebugMode) then
{
	DAC_Com_Values = [1,2,3,1];
	DAC_Marker = 2;
}
else
{
	DAC_Com_Values = [0,1,0,0];
	DAC_Marker = 0;
};

//Initialize DAC
DAC_Basic_Value = 0;
execVM "DAC\DAC_Config_Creator.sqf";

//Briefing
execVM "Briefing.sqf";
execVM "MedicalInfo.sqf";

//Disconnect Handler -- This needs to be redone
addMissionEventHandler ["HandleDisconnect",
{
	_JIPslots = [JIP_1,JIP_2,JIP_3,JIP_4,JIP_5,JIP_6,JIP_7,JIP_8,JIP_9,JIP_10];
	if ((_this select 0) in _JIPslots) then
	{
		(_this select 0) setDamage 1;
	};
}];

//Server Only Init
if (isServer) then
{
	execVM "Scripts\GroupMarkers\GroupMarkersInit.sqf";
};

//Force ACRE Spectator
[false] call acre_api_fnc_setSpectator;

//Client Only Init
if (!isNull player && isPlayer player) then
{
	[player, MyPlayerFaction] execVM "Scripts\LoadoutController\LoadoutManager.sqf";
	execVM "Scripts\Utilities\PlayerList.sqf";
	//call WP_fnc_CheckBloodACEAction;
	//call WP_fnc_BloodChecker;
};

//JIP Init
if (didJIP && groupId (group player) == "JIP") then
{
	execVM "Scripts\Utilities\PlayerList.sqf";
	//call WP_fnc_CheckBloodACEAction;
	//call WP_fnc_BloodChecker;
};

//Fog
0 setFog [0.3,0.05,5];