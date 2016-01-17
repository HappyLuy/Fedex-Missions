//Input: [string VariableName, object VariableValue, bool StoreonClient] call WP_fnc_SaveVariable;
//Output: [string Storage Location, string VariableName, string VariableValue]

private ["_Return","_VariableName","_VariableValue"];
_functionTitle= "WP_fnc_SaveVariable";
_Return = false;

try
{
	_VariableName = _this select 0;
	_VariableValue = _this select 1;
	if(_this select 2) then
	{
		profileNameSpace setVariable [_VariableName, _VariableValue];
		_Return = ["Profile",_VariableName,_VariableValue];
	}
	else
	{
		missionNameSpace setVariable [_VariableName, _VariableValue];
		_Return = ["Mission",_VariableName,_VariableValue];
	};
	if (isNil "_Return") then
	{
		_Return = false;
	};
}
catch
{
	//Report Error
	diag_log format["Error in %1: - %2",_functionTitle , _exception];

	//Destroy Variables
	_functionTitle = nil;
	_VariableName = nil;
	_VariableValue = nil;

	//Set Return to null
	_Return = objNull;
};
_Return