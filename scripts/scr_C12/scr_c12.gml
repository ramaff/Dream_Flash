function scr_C12(_weapon_cost) {

	if global.C[8] > 0 {
	    if (sWeaponOvertime >= (global.C[8] * 120)) {
	        if global.C[12] > 0 {
	            if senergy < weapStop + _weapon_cost {
	                senergy += global.C[12] * (weapStop + _weapon_cost) + 1;
	                shealth -= (weapStop + _weapon_cost) / 20;
	            }
	        }
	    }
	} else {
	    if global.C[12] > 0 {
	        if senergy < weapStop + _weapon_cost {
	            senergy += global.C[12] * (weapStop + _weapon_cost) + 1;
	            shealth -= (weapStop + _weapon_cost) / 20;
	        }
	    }
	}

}
