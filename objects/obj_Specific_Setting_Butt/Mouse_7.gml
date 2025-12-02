

if global.layerdeep = 2 {
	
	scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
    
    global.layerdeep = 3;
	
	var i;
	var _max_i = 0
	var _cursor = noone;
	with (obj_Dream_Cursor) {
		_cursor = id;	
	}
	_cursor.menu_grid = []
    
    if category = 1 {
		_max_i = 3;
        for(i = 1; i <= 4; i++) {
			if i != 4 {
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 32 + 128,camera_get_view_y(view) + 96 * i,obj_Option_Button) {
	                type = i;
	                category = other.category;
					_cursor.menu_grid[0, i - 1] = id;
	            }
	            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 + 64 + 128,camera_get_view_y(view) + 96 * i,obj_Option_Pointer) {
	                type = i;
	                category = other.category;
	            }
	            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 128 + 128,camera_get_view_y(view) + 96 * i,obj_Option_Pointer) {
	                type = -i;
	                category = other.category;
	            }
			} else {
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 252,camera_get_view_y(view) + 96 * i,obj_Option_Button) {
	                type = i;
	                category = other.category;
					percent = global.gameScreenShake * 100;
					_cursor.menu_grid[0, i - 1] = id;
	            }
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 32,camera_get_view_y(view) + 96 * i,obj_Option_Slider) {
	                type = i;
	                category = other.category;
	                percent = global.gameScreenShake * 100;
	            }
			}
        }
    }
    if category = 2 {
		_max_i = 9;
		if !instance_exists(obj_Recollection_Scroll_Bar) {
			instance_create(camera_get_view_x(view) + 32,camera_get_view_y(view) + 144,obj_Recollection_Scroll_Bar);
		}
		for(i = 1; i <= 9; i++) {
            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 128 + 128,camera_get_view_y(view) + 96 * i,obj_Option_Button) {
                type = i;
                category = other.category;
				_cursor.menu_grid[0, i - 1] = id;
            }
            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 + 64 + 128,camera_get_view_y(view) + 96 * i,obj_Option_Pointer) {
                type = i;
                category = other.category;
            }
        }
			with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 + 384,camera_get_view_y(view) + 480,obj_Option_Reset) {
	            type = 10;
	            category = 2;
				_cursor.menu_grid[0, 9] = id;
	        }
    }
    if category = 3 {
		_max_i = 2;
        for(i = 1; i <= 3; i++) {
            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 252,camera_get_view_y(view) + 96 * i,obj_Option_Button) {
                type = i;
                category = other.category;
				_cursor.menu_grid[0, i - 1] = id;
                if type = 1 {
                    percent = global.gameSound;
                }
                if type = 2 {
                    percent = global.gameMusic;
                }
            }
            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 32,camera_get_view_y(view) + 96 * i,obj_Option_Slider) {
                type = i;
                category = other.category;
                if type = 1 {
                    percent = global.gameSound;
                }
                if type = 2 {
                    percent = global.gameMusic;
                }
            }
        }
    }
    if category = 4 {
		_max_i = 4;
        for(i = 11; i <= 15; i++) {
			if i = 13 {
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 252,camera_get_view_y(view) + 96 * (i - 10),obj_Option_Button) {
	                type = i;
					_cursor.menu_grid[0, i - 11] = id;
	                category = other.category;
					percent = global.gameBloomShader * 100;
	            }
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 32,camera_get_view_y(view) + 96 * (i - 10),obj_Option_Slider) {
	                type = i;
	                category = other.category;
	                percent = global.gameBloomShader * 100;
	            }
			} else if i = 15 {
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 252,camera_get_view_y(view) + 96 * (i - 10),obj_Option_Button) {
	                type = i;
					_cursor.menu_grid[0, i - 11] = id;
	                category = other.category;
					percent = global.gameParticles * 100;
	            }
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 32,camera_get_view_y(view) + 96 * (i - 10),obj_Option_Slider) {
	                type = i;
	                category = other.category;
	                percent = global.gameParticles * 100;
	            }
			} else {
				with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 252,camera_get_view_y(view) + 96 * (i - 10),obj_Option_Button) {
	                type = i;
					_cursor.menu_grid[0, i - 11] = id;
	                category = other.category;
	            }
	            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 + 64,camera_get_view_y(view) + 96 * (i - 10),obj_Option_Pointer) {
	                type = i;
	                category = other.category;
	            }
	            with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 128,camera_get_view_y(view) + 96 * (i - 10),obj_Option_Pointer) {
	                type = -i;
	                category = other.category;
	            }
			}
        }
    }
	
	with (_cursor) {
	
		max_x = 0;
		max_y = _max_i;
			
		xx = 0;
		yy = 0;
		target_button = menu_grid[0, 0];
		event_user(1);
	}
	
}

