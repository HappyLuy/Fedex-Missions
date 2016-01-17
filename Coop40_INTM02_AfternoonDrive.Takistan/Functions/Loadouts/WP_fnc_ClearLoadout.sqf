private ["_unit"];

_unit = _this select 0;

if (alive _unit) then
{
	removeHeadgear _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeGoggles _unit;

	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
};