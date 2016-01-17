private ["_board","_plr","_loadouts","_badGroups","_actionLable"];
_board = _this;
_loadouts = ["AmmoBearer","AutoRifleman","Engineer","Grenadier","Marksman","Medic","Platoonleader","PlatoonRATELO","Rifleman","RiflemanAT","SquadLeader","TeamLeader"];

{
	_actionLable = format ["<t color='#00E600'>%1</t> <t color='#FF953d'>Loadout</t>",_x];
	_board addAction [_actionLable,
	{
		_badGroups = ["H-1","H-2","E-1","E-2","E-3","E-4","JIP"];
		if (!((groupID group (_this select 1)) in _badGroups)) then
		{
			[(_this select 1),MyPlayerFaction,(_this select 3)] call WP_fnc_ApplyLoadout;
		}
		else
		{
			hintSilent "Current group not valid. Please use the Group Selector";
		};
	},_x,6,false,true,"","(_target distance _this) < 4"];
} forEach _loadouts;