function scr_E13() {
	// Location Soul Item Step Before Event
	// Visual Code in Soul Draw Event

	    var telebulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 75 {
	            telebulletnear++;
	        }
	    }
		with(obj_soul_hurt_v2) {
	        if distance_to_object(other) <= 75 {
	            telebulletnear++;
	        }
	    }
	    if telebulletnear >= 1 {
			var _uppies = 0.3 * global.E[13] * telebulletnear;
	        tdelay -= global.E[13] * telebulletnear;
			scr_Refresh_Soul(_uppies);
	    }



}
