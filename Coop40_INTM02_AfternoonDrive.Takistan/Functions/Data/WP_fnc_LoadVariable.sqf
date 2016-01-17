//Input: [string VariableName, bool StoredonClient] call WP_fnc_LoadVariable;
//Output:  Object VariableValue or objNull

private ["_Return","_VariableName"];
_functionTitle= "WP_fnc_LoadVariable";
_Return = false;

try
{
	_VariableName = _this select 0;
	if(_this select 1) then
	{
		_Return = profileNamespace getVariable [_VariableName, objNull];
	}
	else
	{
		_Return = missionNamespace getVariable [_VariableName, objNull];
	};
}
catch
{
	//Report Error
	diag_log format["Error in %1: - %2",_functionTitle , _exception];

	//Destroy Variables
	_functionTitle = nil;
	_VariableName = nil;

	//Set Return to null
	_Return = objNull;
};
_Return