/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Recollection_Scroll_Bar) {
	y = starty - ((5*160)*global.scrollperc);
}

if awaitinput = 1 {
	
	var ke = keyboard_key;
	var input = scr_String_Keycheck(ke);
	
	/*
	var mo = mouse_lastbutton;
	
	if mo != 0 {
		input = mo;	
	}
	*/
	
	if keyboard_key != 0 {
		if type = 1 {
			global.gameMoveLeft = input;	
		}
		if type = 2 {
			global.gameMoveDown = input;	
		}
		if type = 3 {
			global.gameMoveRight = input;	
		}
		if type = 4 {
			global.gameMoveUp = input;	
		}
		if type = 5 {
			global.gamePressShoot = input;	
		}
		if type = 6 {
			global.gamePressTeleport = input;	
		}
		if type = 7 {
			global.gameWeaponSwapDown = input;	
		}
		if type = 8 {
			global.gameWeaponSwapUp = input;	
		}
		if type = 9 {
			global.gameMapExpand = input;	
		}
		
		awaitinput = 0;
	}
}