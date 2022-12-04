
    draw_self();
    
    draw_set_font(Dream_Flash_Font);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
	
	/// GAMEPLAY
    
    if type = 1 and category = 1 {
        draw_text(x-256,y-12, string_hash_to_newline("PAUSE ON WINDOW LOSING FOCUS"));
        if global.gameFocusPause = 1 {
            draw_text(x,y-12, string_hash_to_newline("YES"));
        } else {
            draw_text(x,y-12, string_hash_to_newline("NO"));
        }
    }
    if type = 2 and category = 1 {
        draw_text(x-256,y-12, string_hash_to_newline("DISPLAY BOSS DAMAGE VALUE"));
        if global.gameDamageDisplay = 2 {
            draw_text(x,y-12, string_hash_to_newline("DECIMALS"));
        }
        if global.gameDamageDisplay = 1 {
            draw_text(x,y-12, string_hash_to_newline("NUMBER"));
        }
        if global.gameDamageDisplay = 0 {
            draw_text(x,y-12, string_hash_to_newline("NONE"));
        }
    }
	if type = 3 and category = 1 {
        draw_text(x,y-12, string_hash_to_newline("SCREENSHAKE AMOUNT"));
    }
	
	// CONTROLS
	
	if category = 2 {
		var key = global.gameMoveLeft;
		var typekey = "MOVE LEFT";
		if type = 1 {
		}
		if type = 2 {
			typekey = "MOVE DOWN";
			key = global.gameMoveDown;
		}
		if type = 3 {
			typekey = "MOVE RIGHT";
			key = global.gameMoveRight;
		}
		if type = 4 {
			typekey = "MOVE UP";
			key = global.gameMoveUp;
		}
		if type = 5 {
			typekey = "Imagine Weapon";
			key = global.gamePressShoot;
		}
		if type = 6 {
			typekey = "Teleport";
			key = global.gamePressTeleport;
		}
		if type = 7 {
			typekey = "Weapon Swap Down";
			key = global.gameWeaponSwapDown;
		}
		if type = 8 {
			typekey = "Weapon Swap Up";
			key = global.gameWeaponSwapUp;
		}
		if type = 9 {
			typekey = "Expand Map";
			key = global.gameMapExpand;
		}
		
		
		if type = 10 {
			draw_text(x,y-12, string_hash_to_newline("Reset to Default"));
		}
		
		draw_text(x - 192,y-12, string_hash_to_newline(typekey));
		draw_text(x,y-12, string_hash_to_newline(string(key)));
		
	}
	
	//// SOUND
    
    if type = 1 and category = 3 {
        draw_text(x,y-12, string_hash_to_newline("SOUND"));
    }
    if type = 2 and category = 3 {
        draw_text(x,y-12, string_hash_to_newline("MUSIC"));
    }
    if type = 3 and category = 3 {
        draw_text(x,y-12, string_hash_to_newline("AMBIENT"));
    }
	
	/// VISUALS

    if type = 11 and category = 4 {
        draw_text(x,y-12, string_hash_to_newline("RESOLUTION"));
        ww = window_get_width();
        wh = window_get_height();
        draw_text(x+220,y-12, string_hash_to_newline(string(ww) + "x" + string(wh)));
    }
    if type = 12 and category = 4 {
        if global.gameFullscreen = 1 {
            draw_text(x,y-12, string_hash_to_newline("FULLSCREEN"));
            draw_text(x + 220,y-12, string_hash_to_newline("ON"));
        } else {
            draw_text(x,y-12, string_hash_to_newline("FULLSCREEN"));
            draw_text(x + 220,y-12, string_hash_to_newline("OFF"));
        }
    }
	if type = 13 and category = 4 {
        if global.gameBloomShader = 1 {
            draw_text(x,y-12, string_hash_to_newline("Bloom Shader"));
            draw_text(x + 220,y-12, string_hash_to_newline("ON"));
        } else {
            draw_text(x,y-12, string_hash_to_newline("Bloom Shader"));
            draw_text(x + 220,y-12, string_hash_to_newline("OFF"));
        }
    }
	if type = 14 and category = 4 {
        draw_text(x,y-12, string_hash_to_newline("Graphic Quality"));
        draw_text(x + 220,y-12, string_hash_to_newline(global.gameGraphics));
    }
	if type = 15 and category = 4 {
        draw_text(x,y-12, string_hash_to_newline("Particle Amount"));
    }

