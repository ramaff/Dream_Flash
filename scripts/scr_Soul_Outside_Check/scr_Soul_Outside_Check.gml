function scr_Soul_Outside_Check() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = x - xv;
	var yval = y - yv;
	var inside = 0;

	if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	    inside = 1;
	}

	if inside = 0 {

	    x = clamp(x,(room_width / 2) - ((global.roomSizeY / 2) - abs(yval)),(room_width / 2) + ((global.roomSizeY / 2) - abs(yval)));
	    y = clamp(y,(room_height / 2) - ((global.roomSizeY / 2) - abs(xval)),(room_height / 2) + ((global.roomSizeX / 2) - abs(xval)));
    
	    //x = room_width / 2;
	    //y = room_height / 2;
	}



}
