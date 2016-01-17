
///	Input: [Object Unit, String Faction, String Loadout] call WP_fnc_ApplyLoadout;
/// Output Bool

private ["_unit","_faction","_loadout","_Return"];
_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;
_Return = [0, (format["%1-%2",_faction,_loadout])];

[_unit] call WP_fnc_ClearLoadout;

_path = format ["Scripts\LoadoutController\Loadouts\%1\%2.sqf",(toUpper _faction),(toUpper _loadout)];
/*
if (_path call WP_fnc_FileExists) then
{
	[_unit,_faction] execVM _path;
	_varName = format ["WP_CurrentLoadout_%1", _unit];
	missionNamespace setVariable [_varName,_loadout,true];
	_Return = [1, (format["%1-%2",_faction,_loadout])];
}
else
{
	_Return = [-1, (format["%1-%2",_faction,_loadout])];
};
*/

[_unit,_faction] execVM _path;
_varName = format ["WP_CurrentLoadout_%1", _unit];
missionNamespace setVariable [_varName,_loadout,true];
_Return = [1, (format["%1-%2",_faction,_loadout])];
_Return