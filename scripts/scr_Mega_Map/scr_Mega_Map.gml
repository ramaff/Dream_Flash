function scr_Mega_Map() {
	var _x_origin = (/*camcon.window_scale * camcon.view_zoom * */(camera_get_view_width(view) / 2));
	var _y_origin = (/*camcon.window_scale * camcon.view_zoom * */(camera_get_view_height(view) / 2));
	var _map_x_origin = global.floor[global.currentroom,1];
	var _map_y_origin = global.floor[global.currentroom,2];
	
	var _i;

	for(_i = 0; _i <= global.maxRooms; _i++) {
	    var _map_x_offset = _map_x_origin - global.floor[_i,1];
	    var _map_y_offset = _map_y_origin - global.floor[_i,2];
    
	    var _xx = (_map_x_offset * 32) - (_map_y_offset * 32)
	    var _yy = (_map_x_offset * 32) + (_map_y_offset * 32)
    
	    if (abs(_map_x_offset) < 10) and (abs(_map_y_offset) < 10) {
			
			with instance_create(_x_origin + _xx, _y_origin + _yy, obj_Map_Button) {
				mapRoom = _i;	
				mapRoomType = global.floor[_i,0];
				mapRoomX = global.floor[_i,1];
				mapRoomY = global.floor[_i,2];
			}
	    }
	}



}
