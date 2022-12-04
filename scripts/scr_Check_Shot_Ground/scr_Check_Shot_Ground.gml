function scr_Check_Shot_Ground() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = x + xx - xv;
	var yval = y + yy - yv;

	inscheck = 0;

	if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	    inscheck = 1;
	}


}
