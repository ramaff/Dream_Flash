// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Settings_Menu_Cursor_Setup(){
	
	instance_destroy(obj_Dream_Cursor)
	var _cursor = instance_create(x,y,obj_Dream_Cursor);

	var _i = 0;
	for(_i = 1; _i <= 5; _i++) {
	    with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 160,camera_get_view_y(view) - 80 + _i * 104,obj_Specific_Setting_Butt) {
	        category = _i;
	        image_speed = 0;
	        image_index = category - 1;
		
			_cursor.menu_grid[0, _i - 1] = id;
	    }
	}

	with (_cursor) {
	
		max_x = 0;
		max_y = 4;
			
		xx = 0;
		yy = 0;
		target_button = menu_grid[0, 0];
		/*if InputDeviceGetAnyGamepadConnected() {
			event_user(0);
		} */
	}


}