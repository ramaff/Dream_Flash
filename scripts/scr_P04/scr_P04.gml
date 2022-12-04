function scr_P04() {
	// Location Soul Item Step Before Event
	// Visual Code in Soul Draw Event

	if global.P[4] > 0 {
	    var regenbulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 75 {
	            if speed > 0 {
	                regenbulletnear = 1;
	            }
	        }
	    }
	    if regenbulletnear = 1 {
			var hamount = 0.025 + 0.025 * global.P[4];
		
			scr_Heal_Soul(hamount);
	    }
	}



}
