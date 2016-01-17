
///	Loadout Manager
///	This script is built to assign units to equipment loadouts.
/// when possible this script will be updated so that it can be controlled if units respawn with a
/// new set of equipment or that of which they died with.
///	Last Updated 20/10/15 by Razor

private ["_unit","_faction","_eCode"];
private ["_TypeSquadLeader","_TypeTeamLeader","_TypeMedic","_TypeRifleman","_TypeGrenadier","_TypeAutoRifleman","_TypeRiflemanAT","_TypeMarksman","_TypePlatoonLeader", "_TypePlatoonRATELO","_TypeEngineer","_TypePilot","_TypeAmmoBearer"];

//Type Assigment
_TypePlatoonLeader 	= 	[PLT_PL];
_TypePlatoonRATELO 	= 	[PLT_RT];
_TypeSquadLeader 	= 	[ASL_SL, BSL_SL, CSL_SL];
_TypeTeamLeader 	= 	[AS1_TL, AS2_TL, BS1_TL, BS2_TL, CS1_TL, CS2_TL];
_TypeMedic 			= 	[PLT_MD, ASL_MD, BSL_MD, CSL_MD];
_TypeGrenadier 		= 	[AS1_GR, BS1_GR, CS1_GR];
_TypeAutoRifleman 	= 	[AS1_AR, AS2_AR, BS1_AR, BS2_AR, CS1_AR, CS2_AR];
_TypeMarksman 		= 	[AS1_MK, BS1_MK, CS1_MK];
_TypeRiflemanAT 	= 	[AS2_AT, BS2_AT, CS2_AT];
_TypeAmmoBearer 	= 	[AS2_AB, BS2_AB, CS2_AB];
_TypeRifleman 		= 	[JIP_1, JIP_2, JIP_3, JIP_4, JIP_5, JIP_6, JIP_7, JIP_8, JIP_9, JIP_10];
_TypeEngineer 		= 	[PLT_EN, ENG_E1, ENG_E2, ENG_E3, ENG_E4];
_TypePilot 			= 	[HVC_P1, HVC_P2];
_unit = _this select 0;
_faction = _this select 1;

waitUntil {player getVariable ["WP_PreprocessComplete", false]};
waitUntil {!isNull player && player == _unit};

if (alive _unit && (!isNull player)) then
{
	//Check Loadout Groups
	if (_unit in _TypePlatoonLeader) then
	{
		_eCode = [_unit, _faction, "PlatoonLeader"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypePlatoonRATELO) then
	{
		_eCode = [_unit, _faction, "PlatoonRatelo"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeSquadLeader) then
	{
		_eCode = [_unit, _faction, "SquadLeader"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeTeamLeader) then
	{
		_eCode = [_unit, _faction, "TeamLeader"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeMedic) then
	{
		_eCode = [_unit, _faction, "Medic"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeGrenadier) then
	{
		_eCode = [_unit, _faction, "Grenadier"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeAutoRifleman) then
	{
		_eCode = [_unit, _faction, "AutoRifleman"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeMarksman) then
	{
		_eCode = [_unit, _faction, "Marksman"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeRiflemanAT) then
	{
		_eCode = [_unit, _faction, "RiflemanAT"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeAmmoBearer) then
	{
		_eCode = [_unit, _faction, "AmmoBearer"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeRifleman) then
	{
		_eCode = [_unit, _faction, "Rifleman"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypeEngineer) then
	{
		_eCode = [_unit, _faction, "Engineer"] call WP_fnc_ApplyLoadout;
	};
	if (_unit in _TypePilot) then
	{
		_eCode = [_unit, _faction, "Pilot"] call WP_fnc_ApplyLoadout;
	};

	// Check for Errors
	if ((_eCode select 0) != 1) then
	{
		systemChat format ["Loadout %1 failed to Apply for %2 -- Error code: %3", (_eCode select 1), name _unit, (_eCode select 0)];
	};
};