function scr_C12(_current_weapon_stats, _weap_stop) {

	if global.C[8] > 0 {
	    if (sWeaponOvertime >= (global.C[8] * 120)) {
	        if global.C[12] > 0 {
	            if senergy < _weap_stop + _current_weapon_stats.Real_Essence_Cost {
	                senergy += global.C[12] * (_weap_stop + _current_weapon_stats.Real_Essence_Cost) + 1;
	                shealth -= (_weap_stop + _current_weapon_stats.Real_Essence_Cost) / 20;
	            }
	        }
	    }
	} else {
	    if global.C[12] > 0 {
	        if senergy < _weap_stop + _current_weapon_stats.Real_Essence_Cost {
	            senergy += global.C[12] * (_weap_stop + _current_weapon_stats.Real_Essence_Cost) + 1;
	            shealth -= (_weap_stop + _current_weapon_stats.Real_Essence_Cost) / 20;
	        }
	    }
	}

}
