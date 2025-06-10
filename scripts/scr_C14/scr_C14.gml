function scr_C14(_current_weapon_stats) {
	// Location Weapon Use List

	if global.C[14] > 0 {
		var threshold = 22.5 - (2.5 * global.C[14])
	    if _current_weapon_stats.Real_Essence_Cost > threshold {
	        _current_weapon_stats.Real_Essence_Cost = threshold + ((_current_weapon_stats.Real_Essence_Cost - threshold) / (2 * global.C[14]));
	    }
	}



}
