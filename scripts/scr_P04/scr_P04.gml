function scr_P04() {
	// Location Soul Item Step Before Event
	// Visual Code in Soul Draw Event

	if global.P[4] > 0 {
	    var regenbulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 80 {
	            if speed > 0 {
	                regenbulletnear = 1;
	            }
	        }
	    }
	    if regenbulletnear = 1 {
			var hamount = 0.03 + 0.03 * global.P[4];
		
			if obj_Soul_Parent.shealth < obj_Soul_Parent.smaxhealth {
				scr_Heal_Soul(hamount);
			} else {
				scr_Refresh_Soul(hamount * 5);
			}
	    }
	}



}
