
_PLDiarySubject = player createDiarySubject ["PLAYERLISTRECORD","Player List"];

while {true} do
{
	_playerList = call WP_fnc_GetPlayerList;
	_testedGroups = [];
	_line = "";
	_entry = "";
	_time = "";
	{
		_line = "<font color ='#FF953d'>Grp: </font>" + (_x select 0) + "<font color ='#FF953d'> Name: </font>" + (_x select 1) + "<font color ='#FF953d'> ID: </font>" + (str (_x select 2)) + "<font color ='#FF953d'> Role: </font>" + ((_x select 3) call cba_fnc_capitalize) + "<br/>";
		_entry = _entry + _line;
	} forEach _playerList;

	if ((date select 4) < 10) then
	{
		_time = format ["%1:0%2", (date select 3), (date select 4)];
	}
	else
	{
		_time = format ["%1:%2", (date select 3), (date select 4)];
	};
	player createDiaryRecord ["PLAYERLISTRECORD", [format ["Time: %1", _time], _entry]];
	sleep 600;
};