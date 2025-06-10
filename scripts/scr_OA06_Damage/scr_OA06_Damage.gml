function scr_OA06_Damage() {
	// Location Shot Step Event

	var _dam = shot_stats.Shot_Power / 45 * shot_stats.Shot_Miracle
	with(obj_Boss_Parent) {
	    if distance_to_object(other) <= 100 {
	        bosshealth -= _dam
	    }
	}

}
