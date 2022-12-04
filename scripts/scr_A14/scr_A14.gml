function scr_A14() {
	// Location Shot Step Event

	if global.A[14] > 0 and shotorigin = obj_Soul_Parent and object_index != obj_Defense_Soul_Shot {
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= 60 {
	            dmg = (global.A[14]) * other.shotpower / 62.5;
	            bosshealth -= dmg;
	        }
	    }
	}



}
