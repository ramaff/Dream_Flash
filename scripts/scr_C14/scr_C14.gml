function scr_C14() {
	// Location Weapon Use List

	if global.C[14] > 0 {
	    if weaponCost > 20 {
	        weaponCost = 20 + ((weaponCost - 20) / (2 * global.C[14]));
	    }
	}



}
