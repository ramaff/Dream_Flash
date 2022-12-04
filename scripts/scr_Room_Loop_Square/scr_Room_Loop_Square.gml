function scr_Room_Loop_Square() {
	var xval = room_width / 2;
	var yval = room_height / 2;

	if x > (xval + (global.roomSizeX / 2) + 128) {
	    x -= global.roomSizeX + 64;
	}

	if x < (xval - (global.roomSizeX / 2) - 128) {
	    x += global.roomSizeX + 64;
	}

	if y > (yval + (global.roomSizeY / 2) + 128) {
	    y -= global.roomSizeY + 64;
	}

	if y < (yval - (global.roomSizeY / 2) - 128) {
	    y += global.roomSizeY + 64;
	}



}
