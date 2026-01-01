/// @description Insert description here
// You can write your code in this editor
scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])

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

if abs(type) = 3 and category = 1 {
    move = "right";
    if type < 0 {
        move = "left";
    }

    if move = "right" {
        global.level_up_camera_lock++;
    } else if move = "left" {
        global.level_up_camera_lock--;
    }
    
    if global.level_up_camera_lock < 0 {
        global.level_up_camera_lock = 1;
    } else if global.level_up_camera_lock > 1 {
        global.level_up_camera_lock = 0;
    }     
}

if abs(type) = 5 and category = 1 {
    move = "right";
    if type < 0 {
        move = "left";
    }

    if move = "right" {
        global.game_controller_gryo++;
    } else if move = "left" {
        global.game_controller_gryo--;
    }
    
    if global.game_controller_gryo < 0 {
        global.game_controller_gryo = 1;
    } else if global.game_controller_gryo > 1 {
        global.game_controller_gryo = 0;
    }     
}

if category = 2 {
	awaitinput = 1;
}

if abs(type) = 11 and category = 4 {
    var ww = camera_get_view_width(view);
    var wh = camera_get_view_height(view);
    
    var size = 0;
    
    if camcon.window_scale = 1 {
        size = 0;
    }
    size = round((camcon.window_scale - 1) * 6)
    
    if type > 0 {
        size++;
    }
    if type < 0 {
        //size -= 1;
        size--;
    }
    
	size = size mod 11
	if size < 0 {
		size += 11;
	}

   scr_Game_Zoom((540 + (90 * size))/540);
	if instance_exists(obj_Bloom_Control) {
		with(obj_Bloom_Control) {
			scr_Room_Effect_Step()
		}
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
	
	if instance_exists(obj_Bloom_Control) {
		with(obj_Bloom_Control) {
			scr_Room_Effect_Step()
		}
	}
    
}

/* */
/*  */
