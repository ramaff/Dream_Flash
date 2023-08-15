function scr_Room_Loop_Everywhere(_edge_add = 256) {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xPos = x - xv;
	var yPos = y - yv;

	if ((xPos < 0) and (yPos > 0)) {  // Negative X Negative Y
	    if (xPos - yPos < (0 - (global.roomSizeX / 2) - _edge_add)) {
	        x += (global.roomSizeX / 2) + _edge_add;
	        y -= (global.roomSizeX / 2) + _edge_add;
	    }
	}

	if ((xPos > 0) and (yPos > 0)) {  // Positive X Negative Y
	    if (xPos + yPos > ((global.roomSizeX / 2) + _edge_add)) {
	        x -= (global.roomSizeX / 2) + _edge_add;
	        y -= (global.roomSizeX / 2) + _edge_add;
	    }
	}

	if ((xPos < 0) and (yPos < 0)) {  // Negative X Positive Y
	    if (xPos + yPos < (0 - (global.roomSizeX / 2) - _edge_add)) {
	        x += (global.roomSizeX / 2) + _edge_add;
	        y += (global.roomSizeX / 2) + _edge_add;
	    }
	}

	if ((xPos > 0) and (yPos < 0)) {  // Positive X Positive Y
	    if (xPos - yPos > ((global.roomSizeX / 2) + _edge_add)) {
	        x -= (global.roomSizeX / 2) + _edge_add;
	        y += (global.roomSizeX / 2) + _edge_add;
	    }
	}


	var xval = room_width / 2;
	var yval = room_height / 2;

	if x > (xval + (global.roomSizeX / 2) + _edge_add) {
	    x -= global.roomSizeX + _edge_add;
	}

	if x < (xval - (global.roomSizeX / 2) - _edge_add) {
	    x += global.roomSizeX + _edge_add;
	}

	if y > (yval + (global.roomSizeY / 2) + _edge_add) {
	    y -= global.roomSizeY + _edge_add;
	}

	if y < (yval - (global.roomSizeY / 2) - _edge_add) {
	    y += global.roomSizeY + _edge_add;
	}



}
