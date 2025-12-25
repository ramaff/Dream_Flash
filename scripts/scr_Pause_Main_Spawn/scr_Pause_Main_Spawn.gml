
function scr_Pause_Main_Spawn() {
	//with Camera_Control {
	///	event_perform(ev_step_end,0);
	//}
	
	var iwidth = Camera_Control.ideal_width;
	var iheight = Camera_Control.ideal_height;
	var izoom = 0.875;	
	//view_zoom = lerp(ideal_zoom, view_zoom, 0.0001)

	var vzoom = izoom//clamp(view_zoom, 0.5, 2);
	var view_width_zoom = iwidth / vzoom;
	var view_height_zoom = iheight / vzoom;
 
	camera_set_view_size(view, view_width_zoom, view_height_zoom);
	
	var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
	var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);
	
	instance_destroy(obj_Dream_Cursor)
	var _cursor = instance_create(x,y,obj_Dream_Cursor);

	instance_create(camX + 128,camY + 288,obj_Pause);
	var _soul_butt = instance_create(camX - 224,camY - 240,obj_Soul_Menu_Butt);
	var _reco_butt = instance_create(camX + 32,camY - 240,obj_Recollection_Menu_Butt);
	var _settings_butt = instance_create(camX - 192,camY + 124,obj_Settings_Menu_Butt);
	var _save_butt = instance_create(camX + 336,camY + 208,obj_Save_Quit);
	
	_cursor.menu_grid[0, 0] = _soul_butt;
	_cursor.menu_grid[1, 0] = _reco_butt;
	_cursor.menu_grid[0, 1] = _settings_butt;
	_cursor.menu_grid[1, 1] = _save_butt;
	
	with (_cursor) {
	
		max_x = 1;
		max_y = 1;
			
		xx = 0;
		yy = 0;
		target_button = menu_grid[0, 0];
		InputDeviceGetAnyGamepadConnected() {
			event_user(1);
		}
	}

	repeat(99) {
	    instance_create(camX + random(960),camY + random(960),obj_Pause_Sparkle)
	}

}
