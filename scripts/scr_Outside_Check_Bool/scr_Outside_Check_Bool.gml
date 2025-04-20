function scr_Outside_Check_Bool(offset = 256) {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = x - xv;
	var yval = y - yv;
	var inside = 0;
	
	var xsize = (global.roomSizeX / 2) + offset
	var ysize = (global.roomSizeY / 2) + offset

	if abs(xval) < ((xsize) - abs(yval)) and abs(yval) < (ysize - abs(xval)) {
	    inside = 1;
	}

	if inside = 0 {

		return false;
	}

	return true;


}
