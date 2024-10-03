params ["_player"];

// Change to random and get all dog types
_dogType = "MFR_B_GermanShepherd_Black";
diag_log format ["[MWD] Dog type is %1",_dogType];

// Spawns dog at the 2'o clock position 
private _playerFrontPos = _player getRelPos [1, 320];

// Spawn dog 
_dog = group _player createUnit [_dogType, _playerFrontPos, [], 0, "CAN_COLLIDE"];

_dog setVariable ["BIS_fnc_animalBehaviour_disable", true];
_dog setBehaviour "CARELESS";
_dog disableAI "FSM";
_dog setDir direction _player;

//stop

//bark

//follow 



// To put the dog between your legs 
//_dog attachTo [_player, [0, 0, 0]];

/* 
[_dog, "AttackHigh"] remoteExec ["switchMove"];
[_dog, "AttackHigh"] remoteExec ["playMoveNow"];
diag_log format ["[MWD] Dog animation played"];
 */
