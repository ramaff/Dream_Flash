/// @description Insert description here
// You can write your code in this editor

//scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])

if InputDeviceGetAnyActive() and !selected {
	exit;	
}

if type = 10 and category = 2 {
	global.gameMoveLeft = "A";
	global.gameMoveDown = "S";
	global.gameMoveRight = "D";
	global.gameMoveUp = "W";
	global.gamePressShoot = "mb_left";
	global.gamePressTeleport = "mb_right";
	global.gameWeaponSwapDown = "C";
	global.gameWeaponSwapUp = "Z";
	global.gameMapExpand = "M";
}

if category = 2 {
	awaitinput = 1;
}