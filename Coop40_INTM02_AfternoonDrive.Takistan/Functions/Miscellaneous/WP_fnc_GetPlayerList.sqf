
//Input: call WP_fnc_GetPlayerList;
//Output: [Array [PlayerInformation] formatted list of units]

private ["_Return","_functionTitle"];
_functionTitle= "WP_fnc_GetPlayerList";
_Return = false;

try
{
	_Return = [];
	_TestedGroups = [];
	{
		if (!(group _x in _TestedGroups)) then
		{
			_TestedGroups pushBack (group _x);
		};
	} forEach playableUnits;

	{
		{
			if (isPlayer _x) then
			{
				_varName = format ["WP_CurrentLoadout_%1", _x];
				_Return pushBack [groupId (group _x), name _x, _x, (missionNamespace getVariable [_varName, "Unknown"]), alive _x];
			};
		} forEach units _x;
	} forEach _TestedGroups;
}
catch
{
	//Report Error
	diag_log format["Error in %1: - %2",_functionTitle , _exception];

	//Destroy Variables
	_functionTitle = nil;
	_unitArray = nil;
	_line = nil;

	//Set Return to null
	_Return = objNull;
};
_Return