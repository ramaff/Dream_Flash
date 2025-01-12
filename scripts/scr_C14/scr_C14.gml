function scr_C14(_weapon_cost) {
	// Location Weapon Use List

	if global.C[14] > 0 {
		var threshold = 22.5 - (2.5 * global.C[14])
	    if _weapon_cost > threshold {
	        _weapon_cost = threshold + ((_weapon_cost - threshold) / (2 * global.C[14]));
	    }
	}



}
