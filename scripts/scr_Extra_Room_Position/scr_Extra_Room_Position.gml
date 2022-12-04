function scr_Extra_Room_Position() {
	move = choose(1,2,3,4);

	decision = 0;

	for(z = 8; z < 14; z++) {
		if z != 1 {
		currRoomX = Flash[z-1,1];
		currRoomY = Flash[z-1,2];
		} else {
		currRoomX = 0;
		currRoomY = 0;
		}

		decision = 1;

		if move = 1 {
		posRoomX = currRoomX + 1;
		posRoomY = currRoomY;
		}
		if move = 2 {
		posRoomX = currRoomX - 1;
		posRoomY = currRoomY;
		}
		if move = 3 {
		posRoomX = currRoomX;
		posRoomY = currRoomY + 1;
		}
		if move = 4 {
		posRoomX = currRoomX;
		posRoomY = currRoomY - 1;
		}

		if z >= 8 {
		    for(j = 0; j < global.maxRooms; j++) {
		        if (posRoomX = Flash[j,1]) and (posRoomY = Flash[j,2]) {
		            decision = 0;
		        }
		    }
		    adjThree = 0;
		    startNext = 0;
    
		}

		if decision = 1 {
		    nextRoomX = posRoomX;
		    nextRoomY = posRoomY;
			break;
		} 

	}
	
	if roomAttempt >= 8 and decision = 0 {
		    startOver = 1;
		} 
	if roomAttempt < 8 and decision = 0 {
		roomAttempt++;
		scr_Extra_Room_Position();
	}

}
