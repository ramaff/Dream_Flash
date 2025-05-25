function scr_Check_Shot_Ground(_xx, _yy) {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = x + _xx - xv;
	var yval = y + _yy - yv;

	var inscheck = 0;

	if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	    return true
	}
	return false


}
