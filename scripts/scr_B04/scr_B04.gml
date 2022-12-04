function scr_B04() {
	//Location: Soul Hit Events

	if (shealth < 0) and (global.currentheartsurvival >= 1) and Soul_Hearts_Control.heart[global.currentheart,2] != 103 {
	    Soul_Hearts_Control.heart[global.currentheart,2] += 0.01;
	    global.currenthearttype += 0.01;
	    shealth = 1;
	}



}
