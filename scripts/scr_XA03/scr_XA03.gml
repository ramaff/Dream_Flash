// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_XA03_Status_Build_Up() {
	
	var _near_bulls = 0
	var _soul = id;
	with(obj_soul_hurt_v2) {
		if distance_to_object(_soul) < 75 {
			_near_bulls++;	
		}
	}
	with(obj_Soul_Hurt) {
		if distance_to_object(_soul) < 75 {
			_near_bulls++;	
		}
	}
	
	if _near_bulls > 0 {
		scr_Update_Temper(6);
	}
}

function scr_Update_Temper(_mag = 6) {
	var _curr_temper = scr_Get_Status_Time("temper_omen");
	var _status_effect = {
		"duration": _curr_temper + _mag,
		"tick_script": scr_Soul_Temper_Omen,
		"tick_frequency": 1
	}
	var _status_effect_2 = {
		"duration": _curr_temper + _mag,
		"max_duration": 360,
		"bar_sprite": "spr_Defensive_Omen_Status_Effect_Bar"
	}
	variable_struct_set(soul_step_status_effects, "temper_omen", [_status_effect])
	variable_struct_set(soul_draw_status_effects, "temper_omen", [_status_effect_2])	
}

function scr_Soul_Temper_Omen() {
	scr_Soul_Step_Omen_Generic("temper_omen", 360, scr_Temper_Activate)
}

function scr_Temper_Activate() {
	var _accuracy_mult = 0.3;
	var _dur = 240;
	repeat(global.XA[3]) {
		_accuracy_mult = _accuracy_mult * 0.66;	
	}
	var _status_effect_3 = {
		"duration": _dur,
		"magnitude": (20 * global.XA[3])
	}
	var _status_effect_4 = {
		"duration": _dur,
		"magnitude": _accuracy_mult
	}
	var _status_effect = {
		"duration": _dur,
		"magnitude": 10 * global.XA[3],
		"tick_frequency": 30
	}
	var _status_effect_2 = {
		"duration": _dur,
		"max_duration": _dur,
		"tick_script": scr_Temper_Tick,
		"tick_frequency": 10,
		//bar_sprite": "spr_Poison_Status_Effect_Bar"
	}
		
	scr_Soul_Status_Effect_Add(soul_step_status_effects, "firerate_mult", _status_effect_3)
	scr_Soul_Status_Effect_Add(soul_step_status_effects, "accuracy_mult", _status_effect_4)
	scr_Soul_Status_Effect_Add(soul_step_status_effects, "movement_mult", _status_effect)
	scr_Soul_Status_Effect_Add(soul_step_status_effects, "temper", _status_effect_2)	
}

function scr_Temper_Tick() {
	var color = c_white;
	var color_2 = make_colour_rgb(255, 200, 200)
	scr_Particle_Burst(obj_Fire_Part, spr_medium_gas_cloud_opac, color, color_2, 1, 2 + random(4), 0 + random(180), 0, 80, 0.15 + random(0.35), 60 + random(35), false)
}
