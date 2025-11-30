
instance_destroy(obj_Dream_Cursor)
var _cursor = instance_create(mouse_x,mouse_y,obj_Dream_Cursor);

var _i = 0;
for(_i = 1; _i <= 4; _i++) {
    with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 160,camera_get_view_y(view) - 80 + _i * 104,obj_Specific_Setting_Butt) {
        category = _i;
        image_speed = 0;
        image_index = category - 1;
		
		_cursor.menu_grid[0, _i - 1] = id;
    }
}

with (_cursor) {
	
	max_x = 0;
	max_y = 3;
			
	xx = 0;
	yy = 0;
	target_button = menu_grid[0, 0];
	event_user(1);
}

