/// Location: Soul Hit_Reactions
function scr_XA04() {
	
	if global.XA[4] > 0 {
		if scr_Chance(max(1,16 / global.XA[4])) {
			with (Soul_Hearts_Control) {
				var _i;
				var _max = array_length(heart);

				for(_i = _max - 1; _i >= 0; _i--) {
					var heart_val = heart[_i].heart_id
					if heart_val != HEART_TYPE.BODY_RAG and heart_val != 6 and heart_val != HEART_TYPE.COPING and heart_val != HEART_TYPE.SECURE and heart_val != HEART_TYPE.SEETHING {
						heart[_i].heart_id = HEART_TYPE.SEETHING;
						break;
					}
				}
			}
		}
	}
}
