//instance_create(x,y,obj_Loading_Screen);
midx = room_width / 2 + 32;
midy = room_height / 2 + 32;


if (file_exists("saverun.sav")) {
    if global.layerdeep = 1 {
    
		scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
        scr_Pause_Main_Leave();
        instance_create(0,0,obj_Start_Run_Menu);
		
		var _butt1 = noone;
		var _butt2 = noone;
		
        with instance_create(midx - 100,midy + 60,obj_Start_Run_Button) {
            load = 0;
			_butt1 = id;
        }  
        with instance_create(midx + 100,midy + 60,obj_Start_Run_Button) {
            load = 1;
			_butt2 = id;
        } 
		instance_destroy(obj_Dream_Cursor)
        var _cursor = instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
        global.layerdeep = 2;
		
		with (_cursor) {
			menu_grid[0, 0] = _butt1;
			menu_grid[1, 0] = _butt2;
	
			max_x = 1;
			max_y = 0;
			
			xx = 1;
			yy = 0;
			target_button = _butt2;
			InputDeviceGetAnyGamepadConnected() {
				event_user(1);
			}
		}
    
    }
} else {
    if global.layerdeep = 1 {
		scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
        instance_create(0,0,Run_Fade_Control);
        instance_create(0,0,obj_Fade);
    }
}

