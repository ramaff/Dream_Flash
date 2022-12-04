function scr_U07() {
	// Location Soul Item Step Before Event
	// Visual Code in Soul Draw Event

	if global.U[07] > 0 {
	    var instinct = 0;
	    with(obj_Soul_Hurt) {
	        if distance_to_object(other) <= 60 {
	            if speed > 0 {
	                instinct = 1;
	            }
	        }
	    }
	    if instinct = 1 {
	        sdelay -= global.U[07] * 0.5;
			senergy += 0.2 * global.U[07];
	    }
	}



}
