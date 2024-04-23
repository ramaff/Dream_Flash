function scr_OA06_Damage() {
	// Location Shot Step Event

	if shot_stats.Shot_Miracle > 0 {
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= 100 {
	            bosshealth -= other.shot_stats.Shot_Power / 45;
	        }
	    }
	}

}
