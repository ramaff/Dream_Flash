function scr_Soul_Outside_Check() {
	// center of each playable field
	var x_center = room_width / 2;
	var y_center = room_height / 2;

	// x and y positions relative to the center of the room
	var x_pos = x - x_center;
	var y_pos = y - y_center;
	var inside = false;
	
	// half the room width/height (so the distance from the center to the corner)
	var room_half_size = (global.roomSizeX / 2)

	// Check if inside the room diamond or not
	if (abs(x_pos) + abs(y_pos)) < room_half_size {
	    inside = true;
	}

	// If not inside get locked inside
	if inside == false {

		var yy_bound_amount = (room_half_size - abs(y_pos));
		var xx_bound_amount = (room_half_size - abs(x_pos));

	    x = clamp(x, x_center - yy_bound_amount, x_center + yy_bound_amount);
	    y = clamp(y, y_center - xx_bound_amount, y_center + xx_bound_amount);

	}

}
