function scr_Inside_Field() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = x - xv;
	var yval = y - yv;

	if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	    return true;
	} else {
		return false;	
	}



}
