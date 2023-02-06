function scr_OA06_Damage() {
	// Location Shot Step Event

	if shotmiracle > 0 {
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= 100 {
	            bosshealth -= other.shotpower / 45;
	        }
	    }
	}

}
