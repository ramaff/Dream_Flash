function scr_Room_Loop_Horizontal() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xPos = x - xv;
	var yPos = y - yv;

	var starty = y;

	/// 16 48

	if ((xPos < 0) and (yPos > 0)) {  // Negative X Negative Y
	    if (xPos - yPos < (0 - (global.roomSizeX / 2) - 96)) {
	        //x += (global.roomSizeX - abs(yPos)) + 64;
			x -= (2 * xPos) + 64;
	    }
	}

	if ((xPos > 0) and (yPos > 0)) {  // Positive X Negative Y
	    if (xPos + yPos > ((global.roomSizeX / 2) + 96)) {
	        //x += (global.roomSizeX - abs(yPos)) + 64;
			x -= (2 * xPos) - 64;
	    }
	}

	if ((xPos < 0) and (yPos < 0)) {  // Negative X Positive Y
	    if (xPos + yPos < (0 - (global.roomSizeX / 2) - 96)) {
	        //x += (global.roomSizeX - abs(yPos)) + 64;
			x -= (2 * xPos) + 64;
	    }
	}

	if ((xPos > 0) and (yPos < 0)) {  // Positive X Positive Y
	    if (xPos - yPos > ((global.roomSizeX / 2) + 96)) {
	        //x += (global.roomSizeX - abs(yPos)) + 64;
			x -= (2 * xPos) - 64;
	    }
	}

	//y = starty;

	var xval = room_width / 2;
	var yval = room_height / 2;

	if x > (xval + (global.roomSizeX / 2) + 96) {
	    x -= global.roomSizeX + 64;
	}

	if x < (xval - (global.roomSizeX / 2) - 96) {
	    x += global.roomSizeX + 64;
	}

	if y > (yval + (global.roomSizeY / 2) + 96) {
	    y -= global.roomSizeY + 64;
	}

	if y < (yval - (global.roomSizeY / 2) - 96) {
	    y += global.roomSizeY + 64;
	}


}
