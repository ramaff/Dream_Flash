function scr_Outside_Check_Bool(offset = 256) {
	// Should return true if outside of the room
	// Previously it was doing it the other way around, which may have caused some bugs

	var _x_pos = x - (room_width / 2);
	var _y_pos = y - (room_height / 2);
	
	var _room_half_size = (global.roomSizeX / 2) + offset

	if (abs(_x_pos) + abs(_y_pos)) < _room_half_size {
	    return false;
	}

	return true;

}
