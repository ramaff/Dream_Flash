function scr_Room_Loop_Everywhere_Ext() {
	var bnc = 0;

	var xv = room_width / 2;
	var yv = room_height / 2;

	var xPos = x - xv;
	var yPos = y - yv;

	if ((xPos < 0) and (yPos > 0)) {  // Negative X Negative Y
	    if (xPos - yPos < (0 - (global.roomSizeX / 2) - 96)) {
	        x += (global.roomSizeX / 2) + 96;
	        y -= (global.roomSizeX / 2) + 96;
			bnc = 1;
	    }
	}

	if ((xPos > 0) and (yPos > 0)) {  // Positive X Negative Y
	    if (xPos + yPos > ((global.roomSizeX / 2) + 96)) {
	        x -= (global.roomSizeX / 2) + 96;
	        y -= (global.roomSizeX / 2) + 96;
			bnc = 1;
	    }
	}

	if ((xPos < 0) and (yPos < 0)) {  // Negative X Positive Y
	    if (xPos + yPos < (0 - (global.roomSizeX / 2) - 96)) {
	        x += (global.roomSizeX / 2) + 96;
	        y += (global.roomSizeX / 2) + 96;
			bnc = 1;
	    }
	}

	if ((xPos > 0) and (yPos < 0)) {  // Positive X Positive Y
	    if (xPos - yPos > ((global.roomSizeX / 2) + 96)) {
	        x -= (global.roomSizeX / 2) + 96;
	        y += (global.roomSizeX / 2) + 96;
			bnc = 1;
	    }
	}


	var xval = room_width / 2;
	var yval = room_height / 2;

	if x > (xval + (global.roomSizeX / 2) + 96) {
	    x -= global.roomSizeX + 96;
		bnc = 1;
	}

	if x < (xval - (global.roomSizeX / 2) - 96) {
	    x += global.roomSizeX + 96;
		bnc = 1;
	}

	if y > (yval + (global.roomSizeY / 2) + 96) {
	    y -= global.roomSizeY + 96;
		bnc = 1;
	}

	if y < (yval - (global.roomSizeY / 2) - 96) {
	    y += global.roomSizeY + 96;
		bnc = 1;
	}

	if shot_stats.Shot_Speed = 0 || speed = 0 {
		bnc = 0;
	}

	if bnc = 1 {
		shot_boss_id = instance_id_get( instance_count ) + global.instanceidincrementer;
	
		global.instanceidincrementer++;
	}


}
