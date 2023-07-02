function scr_Outside_Check() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = x - xv;
	var yval = y - yv;
	var inside = 0;
	
	var xsize = (global.roomSizeX / 2) + 64
	var ysize = (global.roomSizeY / 2) + 64

	if abs(xval) < ((xsize) - abs(yval)) and abs(yval) < (ysize - abs(xval)) {
	    inside = 1;
	}

	if inside = 0 {

	    x = clamp(x,(room_width / 2) - ((global.roomSizeX / 2) - abs(yval)),(room_width / 2) + ((global.roomSizeY / 2) - abs(yval)));
	    y = clamp(y,(room_height / 2) - ((global.roomSizeY / 2) - abs(xval)),(room_height / 2) + ((global.roomSizeX / 2) - abs(xval)));
	}



}
