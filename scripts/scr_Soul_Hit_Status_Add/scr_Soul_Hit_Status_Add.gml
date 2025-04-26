function scr_soul_hit_status_add_v2(_bullet_stats) {

	if _bullet_stats.bullet_stun > 0 {
		var _status_effect = {
			"duration": _bullet_stats.bullet_stun_time,
		}
		variable_struct_set(soul_step_status_effects, "stun", [_status_effect])
	}
	if _bullet_stats.bullet_sleep > 0 {
		var _status_effect = {
			"duration": _bullet_stats.bullet_sleep_time,
			"tick_script": scr_Soul_Sleep_Tick,
			"tick_frequency": 30
		}
		var _status_effect_2 = {
			"duration": _bullet_stats.bullet_sleep_time,
			"tick_script": scr_Soul_Attack_Think,
			"tick_frequency": 1
		}
		variable_struct_set(soul_step_status_effects, "sleep", [_status_effect])
		variable_struct_set(soul_step_status_effects, "sleep_sprite", [_status_effect_2])
	}
	if _bullet_stats.bullet_poison_omen > 0 {
		var _curr_poison = 0
		if variable_struct_exists(soul_step_status_effects, "poison_omen") {
			if array_length(soul_step_status_effects.poison_omen) > 0 {
				_curr_poison = soul_step_status_effects.poison_omen[0].duration
			}
		}
		var _status_effect = {
			"duration": _curr_poison + _bullet_stats.bullet_poison_omen,
			"tick_script": scr_Soul_Poison_Omen,
			"tick_frequency": 1
		}
		variable_struct_set(soul_step_status_effects, "poison_omen", [_status_effect])
	}

}


function scr_Soul_Hit_Status_Add() {

	if other.bulletstun > 0 {
		var _status_effect = {
			"duration": other.bulletstuntime	
		}
		variable_struct_set(soul_step_status_effects, "stun", [_status_effect])
	}
	if other.bulletsleep > 0 {
		var _status_effect = {
			"duration": other.bulletsleeptime,
			"tick_script": scr_Soul_Sleep_Tick,
			"tick_frequency": 30
		}
		var _status_effect_2 = {
			"duration": other.bulletsleeptime,
			"tick_script": scr_Soul_Attack_Think,
			"tick_frequency": 1
		}
		variable_struct_set(soul_step_status_effects, "sleep", [_status_effect])
		variable_struct_set(soul_step_status_effects, "sleep_sprite", [_status_effect_2])
	}

}
