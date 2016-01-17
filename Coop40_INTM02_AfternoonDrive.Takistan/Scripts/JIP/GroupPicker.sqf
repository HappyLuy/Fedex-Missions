
_object = _this;

while {true} do
{
	removeAllActions _object;
	_TestedGroups = [];
	{
		if (!(group _x in _TestedGroups)) then
		{
			_TestedGroups pushBack (group _x);
		};
	} forEach playableUnits;
	{
		_badGroups = ["H-1","H-2","E-1","E-2","E-3","E-4","JIP"];
		if (!((groupID _x) in _badGroups)) then
		{
			_actionLabel = format ["<t color='#FF953d'>Join %1 </t>", (groupID _x)];
			_object addAction [_actionLabel,{[(_this select 1)] joinSilent (_this select 3);},_x,6,false,true,"","(_target distance _this) < 4"];
		};
	} forEach _TestedGroups;
	sleep 10;
};