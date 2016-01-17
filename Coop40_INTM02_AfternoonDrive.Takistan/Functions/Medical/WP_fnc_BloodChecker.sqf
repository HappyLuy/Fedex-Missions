///	Input: [] spawn WP_fnc_BloodChecker;
///	Output:  Variable, Array, Object or objNull
/// Last Updated: 22/10/15 by Razor

private ["_Return","_functionTitle","_blood","_timeStamp", "_a", "_s", "_y"];
_functionTitle= "WP_fnc_BloodChecker";
_Return = false;

/*
	Notes:
			_a = Blood Inverse
			_s = scalar
			_y = base time 	(seconds)
			_t = time 		(seconds)
*/

try
{
	_timeStamp = -1;
	while {alive player } do
	{
		_blood = player getVariable ["ace_medical_bloodVolume",100];
		_a = (101 - _blood);
		_s = 10;
		_y = 600;

		if (_blood < 50) then
		{
			if (_timeStamp == -1) then
			{
				_timeStamp = time;
				_txt = format ["You begin to feel %1.", (["dizzy", "cold", "lightheaded", "weak"] call BIS_fnc_selectRandom)];
				cutText [_txt, "PLAIN DOWN", 1, true];
			}
			else
			{
				_t = _y / ((_a^5) / (_s^8 * 3.4));

				_isUncon = player getVariable ["ACE_isUnconscious",-1];
				if (DebugMode) then
				{
					player sideChat format ["BloodChecker: %1, Uncon: %2, ETA: %3",_t, _isUncon, (_timeStamp + _t) - time];
				};
				if (_timeStamp + _t < time) then
				{
					if (_isUncon isEqualTo false && !(_isUncon isEqualTo -1)) then
					{
						[player, true, 30, false] call ace_medical_fnc_setUnconscious; //Knock them out
					}
					else
					{
						if (_timeStamp + _t + 120 < time ) then
						{
							player setDamage 1; // Kill
						};
					};
				};
			};
		}
		else
		{
			_timeStamp = -1;
		};
		sleep 1;
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