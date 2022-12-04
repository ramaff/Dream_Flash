function scr_Projectile_Border() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xPos = x - xv;
	var yPos = y - yv;

	var destroy = 0;

	if ((xPos < 0) and (yPos > 0)) {  // Negative X Negative Y
	    if (xPos - yPos < (0 - (global.roomSizeX / 2) - 160)) {
	        destroy = 1;
	    }
	}

	if ((xPos > 0) and (yPos > 0)) {  // Positive X Negative Y
	    if (xPos + yPos > ((global.roomSizeX / 2) + 160)) {
	        destroy = 1;
	    }
	}

	if ((xPos < 0) and (yPos < 0)) {  // Negative X Positive Y
	    if (xPos + yPos < (0 - (global.roomSizeX / 2) - 160)) {
	        destroy = 1;
	    }
	}

	if ((xPos > 0) and (yPos < 0)) {  // Positive X Positive Y
	    if (xPos - yPos > ((global.roomSizeX / 2) + 160)) {
	        destroy = 1;
	    }
	}

	if destroy = 1 {
		instance_destroy();	
	}

	/*
	var xval = room_width / 2;
	var yval = room_height / 2;

	if x > (xval + (global.roomSizeX / 2) + 48) {
	    x -= global.roomSizeX + 16;
	}

	if x < (xval - (global.roomSizeX / 2) - 48) {
	    x += global.roomSizeX + 16;
	}

	if y > (yval + (global.roomSizeY / 2) + 48) {
	    y -= global.roomSizeY + 16;
	}

	if y < (yval - (global.roomSizeY / 2) - 48) {
	    y += global.roomSizeY + 16;
	}
	*/



}
