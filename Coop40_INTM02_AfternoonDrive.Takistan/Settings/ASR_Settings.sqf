
//ASR AI Settings
asr_ai3_main_enabled 		= 1;		// All the other settings matter only if we have 1 here; set 0 to disable all scripted features
asr_ai3_main_radiorange 	= 300;		// Maximum range for AI radios (warning: increasing this impacts game performance); AI groups share known enemy locations over radio (set to 0 to disable)
asr_ai3_main_seekcover 		= 1;		// Set to 1 if AI should move to near cover in combat when they're exposed in the open, 0 to disable.
asr_ai3_main_throwsmoke		= 0.6;		// AI throws smoke when hit for cover (set 0 to disable or a number up to 1 to enable, higher number means better chance to do it)
asr_ai3_main_usebuildings 	= 0.7;		// Chance the AI group will enter nearby building positions for cover (0 to 1 values, 0 will disable the feature)
asr_ai3_main_getinweapons 	= 0.4;		// Chance the AI group will mount nearby static and vehicle weapons in combat (0 to 1 values, 0 will disable the feature)
asr_ai3_main_packNVG		= 0;		// Automatically un-equip NVG during the day (store them in the vest/backpack) and re-equip when it gets dark
asr_ai3_main_debug 			= 0;		// Log extra debugging info to RPT, create debug markers and hints (1-enabled, 0-disabled)
asr_ai3_main_onteamswitch	= 1;		// Teamswitch handler: makes unit switched into the group leader and disables fatigue for AI units in player's group (0 - disabled, 1 - enabled)

asr_ai3_main_setskills 		= 1;		// Override AI skills based on their unit type (faction, training etc.; 0 - disabled, 1 - enabled)
asr_ai3_main_dynsvd 		= 1;		// Enable dynamic view distance adjustment based on day/night and fog thickness on dedicated servers and headless clients
asr_ai3_main_joinlast 		= 0;		// Groups left with only this number of units will merge with nearest group of the same faction (set to 0 to disable)
asr_ai3_main_removegimps	= 120;		// Units unable to walk for this time will separate from their group to prevent slowing it down (time in seconds, set 0 to disable)
asr_ai3_main_rearm 			= 30;		// Enable basic AI rearming (resupply radius in meters; set to 0 to disable feature)