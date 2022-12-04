if abs(type) = 1 and category = 1 {
    move = "right";
    if type < 0 {
        move = "left";
    }

    if move = "right" {
        global.gameFocusPause++;
    } else if move = "left" {
        global.gameFocusPause--;
    }
    
    if global.gameFocusPause < 0 {
        global.gameFocusPause = 1;
    } else if global.gameFocusPause > 1 {
        global.gameFocusPause = 0;
    }    
}

if abs(type) = 2 and category = 1 {
    move = "right";
    if type < 0 {
        move = "left";
    }

    if move = "right" {
        global.gameDamageDisplay++;
    } else if move = "left" {
        global.gameDamageDisplay--;
    }
    
    if global.gameDamageDisplay < 0 {
        global.gameDamageDisplay = 2;
    } else if global.gameDamageDisplay > 2 {
        global.gameDamageDisplay = 0;
    }    
}

if category = 2 {
	awaitinput = 1;
	/*
	var ke = keyboard_key;
	var input = scr_String_Keycheck(ke);
	
	var mo = mouse_lastbutton;
	
	if mo != 0 {
		input = mo;	
	}
	
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
	}
	*/
}

if abs(type) = 11 and category = 4 {
    ww = camera_get_view_width(view);
    wh = camera_get_view_height(view);
    
    /*
    move = "right";
    if type < 0 {
        move = "left";
    }
    */
    
    size = 0;
    
    if camcon.window_scale = 1 {
        size = 0;
    }
    if camcon.window_scale = 630/540 {
        size = 1;
    }
    if camcon.window_scale = 720/540 {
        size = 2;
    }
	if camcon.window_scale = 810/540 {
		size = 3;	
	}
	if camcon.window_scale = 900/540 {
		size = 4
	}
    if camcon.window_scale > 900/540 {
        size = 5;
    }
    
    if type > 0 {
        size++;
    }
    if type < 0 {
        //size -= 1;
        size--;
    }
    
    if size < 0 {
        size = 4;
    } else if size > 4 {
        size = 0;
    }
    
    if size = 0 {
        scr_Game_Zoom(540/540);
    }
    if size = 1 {
        scr_Game_Zoom(630/540);
    }
    if size = 2 {
        scr_Game_Zoom(720/540);
    }
	if size = 3 {
        scr_Game_Zoom(810/540);
    }
	if size = 4 {
        scr_Game_Zoom(900/540);
    }
}

if abs(type) = 12 and category = 4 {
    move = "right";
    if type < 0 {
        move = "left";
    }

    if move = "right" {
        global.gameFullscreen++;
    } else if move = "left" {
        global.gameFullscreen--;
    }
    
    if global.gameFullscreen < 0 {
        global.gameFullscreen = 1;
    } else if global.gameFullscreen > 1 {
        global.gameFullscreen = 0;
    }    
    
    if global.gameFullscreen = 1 {
        window_set_fullscreen(true);
    }
    if global.gameFullscreen = 0 {
        window_set_fullscreen(false);
    }
}

if abs(type) = 13 and category = 4 {
    move = "right";
    if type < 0 {
        move = "left";
    }

    if move = "right" {
        global.gameBloomShader++;
    } else if move = "left" {
        global.gameBloomShader--;
    }
    
    if global.gameBloomShader < 0 {
        global.gameBloomShader = 1;
    } else if global.gameBloomShader > 1 {
        global.gameBloomShader = 0;
    }    
    
}

if abs(type) = 14 and category = 4 {
    
	if global.gameGraphics = "High" {
		global.gameGraphics = "Low";
	} else {
		global.gameGraphics = "High";	
	}
	
	scr_Game_Zoom(camcon.window_scale);
    
}

/* */
/*  */
