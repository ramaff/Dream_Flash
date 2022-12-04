function scr_Leave_Condition() {
	xv = room_width / 2;
	yv = room_height / 2;

	xval = obj_Astral_Indicator.x - xv;
	yval = obj_Astral_Indicator.y - yv;
	inside = 1;

	//if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	//    inside = 1;
	//}

	xv = room_width / 2;
	yv = room_height / 2;

	xPos = obj_Astral_Indicator.x - xv;
	yPos = obj_Astral_Indicator.y - yv;

	roomGoX = 0;
	roomGoY = 0;

	if ((xPos < 0) and (yPos > 0)) {  // Negative X Negative Y
	    if (xPos - yPos < (0 - (global.roomSizeX / 2))) {
	        inside = 0;
	        roomGoY = 1;
	    }
	}

	if ((xPos > 0) and (yPos > 0)) {  // Positive X Negative Y
	    if (xPos + yPos > ((global.roomSizeX / 2))) {
	        inside = 0;
	        roomGoX = 1;
	    }
	}

	if ((xPos < 0) and (yPos < 0)) {  // Negative X Positive Y
	    if (xPos + yPos < (0 - (global.roomSizeX / 2))) {
	        inside = 0;
	        roomGoX = -1;
	    }
	}

	if ((xPos > 0) and (yPos < 0)) {  // Positive X Positive Y
	    if (xPos - yPos > ((global.roomSizeX / 2))) {
	        inside = 0;
	        roomGoY = -1;
	    }
	}




}
