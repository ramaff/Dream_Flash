function scr_C08() {
	// Location Weapon Use List

	if global.C[8] > 0 {
	    if (sWeaponOvertime <= (30 + global.C[8] * 90)) {
			senergy += 100 * global.C[8];
	        var _status_effect = {
				"duration": 180,
				"magnitude": (20 * global.C[8])
			}
			var _status_effect_2 = {
				"duration": 180,
				"max_duration": 180,
				"bar_sprite": "spr_Poison_Status_Effect_Bar"
			}
			var _status_effect_3 = {
				"duration": 180,
				"magnitude": (5 * global.C[8])
			}
		
			scr_Soul_Status_Effect_Add(soul_step_status_effects, "firerate_mult", _status_effect_3)
			scr_Soul_Status_Effect_Add(soul_step_status_effects, "essence_mult", _status_effect)
			scr_Soul_Status_Effect_Add(soul_draw_status_effects, "all_out", _status_effect_2)
	    }
	}



}
