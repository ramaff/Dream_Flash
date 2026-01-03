function scr_Keep_In_Room(_offset = 0, _xx_off = 0, _yy_off = 0) {
	// center of each playable field
	var _x_center = room_width / 2;
	var _y_center = room_height / 2;

	// x and y positions relative to the center of the room
	var _x_pos = x - _x_center + _xx_off;
	var _y_pos = y - _y_center + _yy_off;
	
	// half the room width/height (so the distance from the center to the corner)
	var _room_half_size = (global.roomSizeX / 2) + _offset
	
	var _yy_bound_amount = (_room_half_size - abs(_y_pos));
	var _xx_bound_amount = (_room_half_size - abs(_x_pos));

	x = clamp(x, _x_center - _yy_bound_amount, _x_center + _yy_bound_amount);
	y = clamp(y, _y_center - _xx_bound_amount, _y_center + _xx_bound_amount);	
}

function scr_Generic_Outside_Check(_offset = 0, _xx_off = 0, _yy_off = 0) {
	// center of each playable field
	var _x_center = room_width / 2;
	var _y_center = room_height / 2;

	// x and y positions relative to the center of the room
	var _x_pos = x - _x_center + _xx_off;
	var _y_pos = y - _y_center + _yy_off;
	var _inside = false;
	
	// half the room width/height (so the distance from the center to the corner)
	var _room_half_size = (global.roomSizeX / 2) + _offset

	// Check if _inside the room diamond or not
	if (abs(_x_pos) + abs(_y_pos)) < _room_half_size {
	    return false
	}

	return true

}
