function scr_Heart_Respawn() {
	if global.H06refill <= 0 {
		var undyingHeartCount = 0;

		var i;
		var max_heart = array_length(Soul_Hearts_Control.heart);
		for (i = 0; i < max_heart; i++) {
		    if (Soul_Hearts_Control.heart[i].heart_id = 6) {
		        undyingHeartCount++;
		    }
		}

		if (global.H[6] > 0) and (undyingHeartCount < global.H[6]) {
			scr_Add_New_Heart(6, 10)
		}
	}

}
