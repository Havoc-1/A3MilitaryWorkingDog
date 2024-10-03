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


/* //Repair vehicle 
_action_fieldRepair = ["repairVic","Field repair","a3\ui_f\data\igui\cfg\cursors\iconrepairvehicle_ca.paa",
  {     
      params ["_target", "_player", "_params"];
      [_target] execVM "scripts\DMCL\fieldRepair.sqf";
  },
  {true}
] call ace_interact_menu_fnc_createAction;
["Land_WeldingTrolley_01_F", 0, ["ACE_MainActions"], _action_fieldRepair,true] call ace_interact_menu_fnc_addActionToClass;
 */