function scr_OA06_Damage() {
	// Location Shot Step Event

	var _dam = shot_stats.Shot_Power / 30 * shot_stats.Shot_Miracle
	with(obj_Boss_Parent) {
	    if distance_to_object(other) <= 100 {
	        bosshealth -= _dam
			if global.roomtime mod 5 = 0 {
				scr_setup_dmg_indicator(x,y, _dam * 5, c_white);
			}
	    }
	}

}
