function scr_Heart_Respawn() {
	if global.H06refill <= 0 {
		var undyingHeartCount = 0;

		for (i = 0; i < 16; i++) {
		    if (Soul_Hearts_Control.heart[i,2] = 6) {
		        undyingHeartCount++;
		    }
		}

		if (global.H[6] > 0) and (undyingHeartCount < global.H[6]) {
		    var heartReplenish = 1
			var numH = global.H[6] - undyingHeartCount;
		    repeat(1) {
		        Soul_Hearts_Control.heart[global.totalhearts + 1, 2] = 6;
		        global.totalhearts++;
		        heartReplenish++;
		    }
		}
	}

}
