// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_D05(){

	var color = make_color_rgb(0, 255, 84);	
	repeat(8) {
		scr_Particle_Burst(obj_State_Trail_Front, spr_Soul_Big_Bit, color, color, 1, 3 + random(3), 60 + random(60), 0, 100, 0.2 + random(0.3), 20 + random(20))	
	}
			
	soulinvincibility += 25 + (5 * global.D[5]);
			
	var _status_effect = {
		"duration": 300,
		"magnitude": 5,
		//"tick_script": scr_Soul_Movement_Mult_Tick,
		//"tick_frequency": 5
	}
	var _status_effect_2 = {
		"duration": 300,
		"magnitude": 5 * global.D[5],
		"tick_script": scr_Soul_Movement_Extra_Mult_Tick,
		"tick_frequency": 5
	}
	scr_Soul_Status_Effect_Add(soul_step_status_effects, "movement_mult", _status_effect)
	scr_Soul_Status_Effect_Add(soul_step_status_effects, "movement_mult", _status_effect_2)
		
	_status_effect = {
		"duration": 300,
		"magnitude": (5 * global.D[5]),
		//"tick_script": scr_Soul_Firerate_Mult_Tick,
		//"tick_frequency": 5
	}
		
	scr_Soul_Status_Effect_Add(soul_step_status_effects, "firerate_mult", _status_effect)

}

function scr_D05_Status_Build_Up() {
	
	var _near_bulls = 0
	var _soul = id;
	with(obj_soul_hurt_v2) {
		if distance_to_object(_soul) < 90 {
			_near_bulls++;	
		}
	}
	with(obj_Soul_Hurt) {
		if distance_to_object(_soul) < 90 {
			_near_bulls++;	
		}
	}
	
	if _near_bulls > 0 {
		var _curr_flight_response = scr_Get_Status_Time("flight_response_omen");
		var _status_effect = {
			"duration": _curr_flight_response + 5 + _near_bulls,
			"tick_script": scr_Soul_Flight_Response_Omen,
			"tick_frequency": 1
		}
		var _status_effect_2 = {
			"duration": _curr_flight_response + 5 + _near_bulls,
			"max_duration": 600,
			"bar_sprite": "spr_Flight_Response_Omen_Status_Effect_Bar"
		}
		variable_struct_set(soul_step_status_effects, "flight_response_omen", [_status_effect])
		variable_struct_set(soul_draw_status_effects, "flight_response_omen", [_status_effect_2])
	}
}

function scr_Soul_Flight_Response_Omen() {
	scr_Soul_Step_Omen_Generic("flight_response_omen", 600, scr_D05)
}
