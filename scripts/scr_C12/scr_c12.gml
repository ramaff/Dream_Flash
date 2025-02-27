function scr_C12(_weapon_cost, _weap_stop) {

	if global.C[8] > 0 {
	    if (sWeaponOvertime >= (global.C[8] * 120)) {
	        if global.C[12] > 0 {
	            if senergy < _weap_stop + _weapon_cost {
	                senergy += global.C[12] * (_weap_stop + _weapon_cost) + 1;
	                shealth -= (_weap_stop + _weapon_cost) / 20;
	            }
	        }
	    }
	} else {
	    if global.C[12] > 0 {
	        if senergy < _weap_stop + _weapon_cost {
	            senergy += global.C[12] * (_weap_stop + _weapon_cost) + 1;
	            shealth -= (_weap_stop + _weapon_cost) / 20;
	        }
	    }
	}

}
