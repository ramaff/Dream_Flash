function scr_C08() {
	// Location Weapon Use List

	if global.C[8] > 0 {
	    if (sWeaponOvertime <= (30 + global.C[8] * 60)) {
	        weapStop = -999 * global.C[8];
	    }
	}



}
