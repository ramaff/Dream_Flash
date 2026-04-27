function scr_Leave_Condition(_add = 0) {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = obj_Astral_Indicator.x - xv;
	var yval = obj_Astral_Indicator.y - yv;
	var inside = true;

	var xPos = obj_Astral_Indicator.x - xv;
	var yPos = obj_Astral_Indicator.y - yv;

	var roomGoX = 0;
	var roomGoY = 0;
	
	var _room_half_size = (global.roomSizeX / 2) + _add

	if ((xPos < 0) and (yPos > 0)) {  // Negative X Negative Y
	    if (xPos - yPos < (-_room_half_size)) {
	        inside = false;
	        roomGoY = 1;
	    }
	}

	if ((xPos > 0) and (yPos > 0)) {  // Positive X Negative Y
	    if (xPos + yPos > (_room_half_size)) {
	        inside = false;
	        roomGoX = 1;
	    }
	}

	if ((xPos < 0) and (yPos < 0)) {  // Negative X Positive Y
	    if (xPos + yPos < (-_room_half_size)) {
	        inside = false;
	        roomGoX = -1;
	    }
	}

	if ((xPos > 0) and (yPos < 0)) {  // Positive X Positive Y
	    if (xPos - yPos > (_room_half_size)) {
	        inside = false;
	        roomGoY = -1;
	    }
	}

	return [inside, roomGoX, roomGoY]


}
