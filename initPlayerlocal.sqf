//Executed locally when player joins mission (includes both mission start and JIP). 				  //
params ["_player", "_didJIP"];																		  //
//player: Object	didJIP: Boolean																	  //							
////////////////////////////////////////////////////////////////////////////////////////////////////////

_action_SpawnDog = ["spawnMWD", "Military Working Dog", "scripts\mwd\sfx\icon_dog.pac",
    {
        params ["_target", "_player", "_params"];
        [_player] call XK_fnc_spawnDog;
    },
    {true},
    {},
    [_player]
] call ace_interact_menu_fnc_createAction;

["CAManBase", 1, ["ACE_SelfActions"], _action_SpawnDog, true] call ace_interact_menu_fnc_addActionToClass;

