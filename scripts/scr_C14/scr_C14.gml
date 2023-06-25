function scr_C14() {
	// Location Weapon Use List

	if global.C[14] > 0 {
		var threshold = 22.5 - (2.5 * global.C[14])
	    if weaponCost > threshold {
	        weaponCost = threshold + ((weaponCost - threshold) / (2 * global.C[14]));
	    }
	}



}
