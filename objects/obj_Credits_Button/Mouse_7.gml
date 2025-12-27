

if global.layerdeep = 1 {
	
	scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])

    scr_Pause_Main_Leave();
    instance_create(camera_get_view_x(view) + 512,camera_get_view_y(view) + 288,obj_Credits_Menu);
	var _butt = instance_create(camera_get_view_x(view) + 828,camera_get_view_y(view) + 448,obj_Album_Link);
    
	var _cursor = instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
	
	with (_cursor) {
		
		menu_grid[0,0] = _butt
	
		max_x = 0;
		max_y = 0;
			
		xx = 0;
		yy = 0;
		target_button = menu_grid[0, 0];
		if InputDeviceGetAnyGamepadConnected() {
			event_user(0);
		}
	}
	
    global.layerdeep = 2;

}

