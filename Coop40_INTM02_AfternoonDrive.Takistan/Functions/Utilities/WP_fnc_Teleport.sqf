
///	Input: [Object Unit, Object Unit or Vector3 Pos, Bool Group Teleport] call WP_fnc_Teleport;
///	Output: Bool or objNull
/// Last Updated: 28/06/15 by Razor

private ["_Return","_functionTitle"];
_functionTitle= "WP_fnc_Teleport";
_Return = false;

try
{
	private ["_unit","_pos","_groupTeleport"];
	_unit = _this select 0;

	if (typeName (_this select 1) == "OBJECT") then
	{
		if (vehicle (_this select 1) == _this select 1) then
		{
			_pos = getPosATL (_this select 1);
		}
		else
		{
			_pos = nil;
		};
	}
	else
	{
		if (typeName (_this select 1) == "ARRAY") then
		{
			if (count (_this select 1) == 3) then
			{
				_pos = _this select 1;
			}
			else
			{
				_pos = nil;
			}
		}
		else
		{
			_pos = nil;
		};
	};
	_groupTeleport = _this select 2;
	if (!isNil "_pos") then
	{
		if (_groupTeleport) then
		{
			_groupArray = units (group _unit);
			{
				_x setpos _pos;
			} forEach _groupArray;
		}
		else
		{
			_unit setPos _pos;
		};
		_Return = true;
	}
	else
	{
		_Return = false;
	};
}
catch
{
	//Error reporting and variable cleanup

	//Report Error
	diag_log format["Error in %1: - %2", _functionTitle , _exception];

	//Destroy Variables
	_functionTitle = nil;

	//Set Return to null
	_Return = objNull;
};
_Return