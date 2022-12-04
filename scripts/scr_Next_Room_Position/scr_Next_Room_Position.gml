function scr_Next_Room_Position(currRoomIndex) {
	move = choose(1,2,3,4);

	if currRoomIndex != 1 {
		currRoomX = Flash[currRoomIndex-1,1];
		currRoomY = Flash[currRoomIndex-1,2];
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

	if currRoomIndex > 1 {
	    for(j = 0; j < currRoomIndex; j++) {
	        if (posRoomX = Flash[j,1]) and (posRoomY = Flash[j,2]) {
	            decision = 0;
	        }
	    }
	    adjThree = 0;
	    startNext = 0;
    
	    for(j = 0; j < currRoomIndex; j++) {
	        if (posRoomX = Flash[j,1] + 1) and (posRoomY = Flash[j,2]) {
	            adjThree++;
	        }
	        if (posRoomX = Flash[j,1]) and (posRoomY = Flash[j,2] + 1) {
	            adjThree++;
	        }
	        if (posRoomX = Flash[j,1] - 1) and (posRoomY = Flash[j,2]) {
	            adjThree++;
	        }
	        if (posRoomX = Flash[j,1]) and (posRoomY = Flash[j,2] - 1) {
	            adjThree++;
	        }
	    }
    
	    if currRoomIndex > 7 {
	        if (posRoomX = Flash[0,1] + 1) and (posRoomY = Flash[0,2]) {
	            startNext++;
	        }
	        if (posRoomX = Flash[0,1]) and (posRoomY = Flash[0,2] + 1) {
	            startNext++;
	        }
	        if (posRoomX = Flash[0,1] - 1) and (posRoomY = Flash[0,2]) {
	            startNext++;
	        }
	        if (posRoomX = Flash[0,1]) and (posRoomY = Flash[0,2] - 1) {
	            startNext++;
	        }
	    }
    
	    if adjThree >= 3 || startNext >= 1 {
	        decision = 0;
	    }
	}

	if decision = 1 {
	    nextRoomX = posRoomX;
	    nextRoomY = posRoomY;
	} 
	if roomAttempt >= 8 and decision = 0 {
	    startOver = 1;
	} 
	if roomAttempt < 8 and decision = 0 {
	    roomAttempt++;
	    scr_Next_Room_Position(currRoomIndex);
	}



}
