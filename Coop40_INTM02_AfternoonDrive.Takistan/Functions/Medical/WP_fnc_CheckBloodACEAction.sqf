
//Create Action
_checkBloodACEAction = 	["WP_CheckBloodSelf","Check Blood","",
						{
							//hint format["You have %1%2 blood remaining", round(player getVariable "ace_medical_bloodVolume"),"%"]
							_b = round(player getVariable "ace_medical_bloodVolume");
							if (_b < 50 ) then
							{
								hintSilent "You have lost a lot of blood";
							}
							else
							{
								if (_b != 100) then
								{
									hintSilent "You have lost some blood";
								}
								else
								{
									hintSilent "You are OK";
								};
							};
						},
						{true}
						] call ace_interact_menu_fnc_createAction;

//Add Action
[player, 1, ["ACE_SelfActions"], _checkBloodACEAction] call ace_interact_menu_fnc_addActionToObject;