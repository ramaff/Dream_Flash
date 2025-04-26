function scr_soul_hit_status_add_v2(_bullet_stats) {

	if _bullet_stats.bullet_stun > 0 {
		var _status_effect = {
			"duration": _bullet_stats.bullet_stun_time	
		}
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "stun", _status_effect)	
	}
	if _bullet_stats.bullet_sleep > 0 {
		var _status_effect = {
			"duration": _bullet_stats.bullet_sleep_time
		}
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "sleep", _status_effect)	
	}

}


function scr_Soul_Hit_Status_Add() {

	if other.bulletstun > 0 {
		var _status_effect = {
			"duration": other.bulletstuntime	
		}
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "stun", _status_effect)	
	}
	if other.bulletsleep > 0 {
		var _status_effect = {
			"duration": other.bulletsleeptime,
			"tick_script": scr_Soul_Sleep_Tick,
			"tick_frequency": 30
		}
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "sleep", _status_effect)	
	}

}
