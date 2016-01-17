
private ["_TestedGroups","_TempMarkerName","_MarkerArray"];

MarkerArray = [];

while {true} do
{
	 _TestedGroups = [];
	{
		if (!(group _x in _TestedGroups)) then
		{
			_TestedGroups pushBack (group _x);
		};
	} forEach playableUnits;

	{
		_TempMarkerName = format ["WPL_GroupMarker_%1", (groupId _x)];
		if (getMarkerPos _TempMarkerName isEqualTo [0,0,0]) then
		{
			createMarker [_TempMarkerName, (getPosATL leader _x)];
			MarkerArray pushBack (groupId _x);
		};

		_TempMarkerName setMarkerPos (getPosATL leader _x);
		_TempMarkerName setMarkerText (groupId _x);
		_TempMarkerName setMarkerSize [0.7,0.7];

		switch (groupId _x) do
		{
			//Infantry Platoon
			case "PLT-1": {_TempMarkerName setMarkerColor "colorOrange"; _TempMarkerName setMarkerType "b_hq";};
			case "A-SL": {_TempMarkerName setMarkerColor "colorBLUFOR"; _TempMarkerName setMarkerType "b_hq";};
			case "A-1": {_TempMarkerName setMarkerColor "colorBLUFOR"; _TempMarkerName setMarkerType "b_inf";};
			case "A-2": {_TempMarkerName setMarkerColor "colorBLUFOR"; _TempMarkerName setMarkerType "b_inf";};
			case "B-SL": {_TempMarkerName setMarkerColor "colorOPFOR"; _TempMarkerName setMarkerType "b_hq";};
			case "B-1": {_TempMarkerName setMarkerColor "colorOPFOR"; _TempMarkerName setMarkerType "b_inf";};
			case "B-2": {_TempMarkerName setMarkerColor "colorOPFOR"; _TempMarkerName setMarkerType "b_inf";};
			case "C-SL": {_TempMarkerName setMarkerColor "ColorIndependent"; _TempMarkerName setMarkerType "b_hq";};
			case "C-1": {_TempMarkerName setMarkerColor "ColorIndependent"; _TempMarkerName setMarkerType "b_inf";};
			case "C-2": {_TempMarkerName setMarkerColor "ColorIndependent"; _TempMarkerName setMarkerType "b_inf";};

			//Pilots
			case "H-1": {_TempMarkerName setMarkerColor "ColorCivilian"; _TempMarkerName setMarkerType "b_air";};
			case "H-2": {_TempMarkerName setMarkerColor "ColorCivilian"; _TempMarkerName setMarkerType "b_air";};

			//Engineers
			case "E-1": {_TempMarkerName setMarkerColor "ColorBrown"; _TempMarkerName setMarkerType "b_maint";};
			case "E-2": {_TempMarkerName setMarkerColor "ColorBrown"; _TempMarkerName setMarkerType "b_maint";};
			case "E-3": {_TempMarkerName setMarkerColor "ColorBrown"; _TempMarkerName setMarkerType "b_maint";};
			case "E-4": {_TempMarkerName setMarkerColor "ColorBrown"; _TempMarkerName setMarkerType "b_maint";};

			//JIP and Default here to catch errors
			case "JIP": {_TempMarkerName setMarkerAlpha 0;};
			default {_TempMarkerName setMarkerAlpha 0;};
		};
	} forEach _TestedGroups;

	//hintSilent str _MarkerArray;
	sleep 4;
};
