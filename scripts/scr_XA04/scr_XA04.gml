/// Location: Soul Hit_Reactions
function scr_XA04() {
	
	if global.XA[4] > 0 {
		if scr_Chance(max(1,16 / global.XA[4])) {
			with (Soul_Hearts_Control) {
				var _i;
				var _max = array_length(heart);

				for(_i = 0; _i < _max; _i++) {
					var heart_val = heart[i].heart_id
					if heart_val != 103 and heart_val != 6 and heart_val != 51 and heart_val != 52 and heart_val != 53 and heart_val != 0 {
						heart[i].heart_id = 53;
						break;
					}
				}
			}
		}
	}
}
