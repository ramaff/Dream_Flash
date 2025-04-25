function scr_E13() {
	// Location Soul Item Step Before Event
	// Visual Code in Soul Draw Event

	    var telebulletnear = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 75 {
	            if speed > 0 {
	                telebulletnear = 1;
	            }
	        }
	    }
	    if telebulletnear = 1 {
	        tdelay -= global.E[13];
			scr_Refresh_Soul(0.3 * global.E[13]);
	    }



}
