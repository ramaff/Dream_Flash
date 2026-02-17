/// @description Insert description here
// You can write your code in this editor
if type != 10 {
	if instance_exists(obj_Recollection_Scroll_Bar) {
		y = starty - ((5*160)*global.scrollperc);
	}
}

if awaitinput = 1 {
	
	if InputDeviceGetAnyActive() {
		
		/*if InputCheck(INPUT_VERB.ACCEPT) {
			InputBindingSet(true, INPUT_VERB.ACCEPT, InputBindingGet(true, INPUT_VERB.ACCEPT))	
			awaitinput = 0;
		} else if InputCheck(INPUT_VERB.CANCEL) {
			InputBindingSet(true, INPUT_VERB.CANCEL, InputBindingGet(true, INPUT_VERB.CANCEL))	
			awaitinput = 0;
		} else */
		
		// need to check every input type
		// then depending on the 'type' of the button, update that binding specifically
		
		var _change_verb = INPUT_VERB.SHOOT
		if type = 5 {
			_change_verb = INPUT_VERB.SHOOT	
		}
		if type = 6 {
			_change_verb = INPUT_VERB.WARP
		}
		if type = 7 {
			_change_verb = INPUT_VERB.W_LEFT
		}
		if type = 8 {
			_change_verb = INPUT_VERB.W_RIGHT
		}
		
		var _bind = noone;
		
		if InputCheck(INPUT_VERB.SHOOT) {
			_bind = InputBindingGet(true, INPUT_VERB.SHOOT)	
		} else if InputCheck(INPUT_VERB.WARP) {
			_bind = InputBindingGet(true, INPUT_VERB.WARP)
		} else if InputCheck(INPUT_VERB.W_LEFT) {
			_bind = InputBindingGet(true, INPUT_VERB.W_LEFT)
		} else if InputCheck(INPUT_VERB.W_RIGHT) {
			_bind = InputBindingGet(true, INPUT_VERB.W_RIGHT)
		}
		
		if _bind != noone {
			InputBindingSet(true, _change_verb, _bind)
			awaitinput = 0;
		}
		
	} else {
	
		var ke = keyboard_key;
		var input = scr_String_Keycheck(ke);
	
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
}


