/// Location: Soul Hit_Reactions
function scr_XA04() {
	
	if global.XA[4] > 0 {
		if scr_Chance(max(1,8 / global.XA[4])) {
			with (Soul_Hearts_Control) {
				for(i = 23; i >= 0; i--) {
					var heart_val = heart[i,2] - frac(heart[i,2]);
					if heart_val != 103 and heart_val != 6 and heart_val != 51 and heart_val != 52 and heart_val != 53 and heart_val != 0 {
						heart[i,2] = 53;
						break;
					}
				}
			}
		}
	}
}
