function scr_Boss_Teleport_When_Outside() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xPos = x - xv;
	var yPos = y - yv;

	if ((xPos < 0) and (yPos > 0)) {  // Negative X Negative Y
	    if (xPos - yPos < (0 - (global.roomSizeX / 2) -96)) {
	        scr_Boss_Teleport();
	    }
	}

	if ((xPos > 0) and (yPos > 0)) {  // Positive X Negative Y
	    if (xPos + yPos > ((global.roomSizeX / 2) +96)) {
	        scr_Boss_Teleport();
	    }
	}

	if ((xPos < 0) and (yPos < 0)) {  // Negative X Positive Y
	    if (xPos + yPos < (0 - (global.roomSizeX / 2) -96)) {
	        scr_Boss_Teleport();
	    }
	}

	if ((xPos > 0) and (yPos < 0)) {  // Positive X Positive Y
	    if (xPos - yPos > ((global.roomSizeX / 2) +96)) {
	        scr_Boss_Teleport();
	    }
	}


	var xval = room_width / 2;
	var yval = room_height / 2;

	if x > (xval + (global.roomSizeX / 2) + 96) {
	    scr_Boss_Teleport();
	}

	if x < (xval - (global.roomSizeX / 2) - 96) {
	    scr_Boss_Teleport();
	}

	if y > (yval + (global.roomSizeY / 2) + 96) {
	    scr_Boss_Teleport();
	}

	if y < (yval - (global.roomSizeY / 2) - 96) {
	    scr_Boss_Teleport();
	}



}
