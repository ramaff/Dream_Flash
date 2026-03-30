function scr_Soul_Outside_Check(_offset = 0) {
	// center of each playable field
	var _x_center = room_width / 2;
	var _y_center = room_height / 2;

	// x and y positions relative to the center of the room
	var _x_pos = x - _x_center;
	var _y_pos = y - _y_center;
	var _inside = false;
	
	// half the room width/height (so the distance from the center to the corner)
	var _room_half_size = (global.roomSizeX / 2) + _offset

	// Check if _inside the room diamond or not
	if (abs(_x_pos) + abs(_y_pos)) < _room_half_size {
	    return false
	}

	// If not _inside get locked _inside

	var _yy_bound_amount = (_room_half_size - abs(_y_pos));
	var _xx_bound_amount = (_room_half_size - abs(_x_pos));

	x = clamp(x, _x_center - _yy_bound_amount, _x_center + _yy_bound_amount);
	y = clamp(y, _y_center - _xx_bound_amount, _y_center + _xx_bound_amount);
	
	x = clamp(x, _x_center - _room_half_size, _x_center + _room_half_size);
	y = clamp(y, _y_center - _room_half_size, _y_center + _room_half_size);

	return true

}
