function scr_Floor_Position_Generation() {
	startOver = 0;
	
	var extraRoomStart = global.chapterRooms;
	var i = 0
	
	for(i = 1; i <= global.chapterRooms; i++) {
		//show_debug_message("norm room attempt")
	    roomAttempt = 0;
		//if (i <= global.maxRooms - global.extraRooms + 1) {
			scr_Next_Room_Position(i);
		/*} else {
			scr_Extra_Room_Position();
		}*/
	    global.floor[i,1] = nextRoomX;
	    global.floor[i,2] = nextRoomY;
	    if startOver = 1 {
	        break;
	    }
	}
	
	/*if !scr_Chance(100) {
		startOver = 1
	} */
	
	if startOver != 1 {
		for(i = extraRoomStart + 1; i <= global.maxRooms; i++) {
			//show_debug_message("extra room attempt")
		    roomAttempt = 0;
		    scr_Extra_Room_Position();
		    global.floor[i,1] = nextRoomX;
		    global.floor[i,2] = nextRoomY;
			//break;
		    if startOver = 1 {
		        break;
		    }
		}
	}
	
	if startOver = 1 {
		//show_debug_message("start Over O.O")
	    alarm[0] = 1;
	} else {
		/*show_debug_message("done O.O")
		for(i = 0; i <= global.maxRooms; i++) {
			show_debug_message(global.floor[i,0])
			show_debug_message(global.floor[i,1])
			show_debug_message(global.floor[i,2])
		} */
	    loading = 0;
		scr_Floor_Generation();
		alarm[1] = 1;
	
	}

}
