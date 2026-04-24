// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_H11_Status_Build_Up(_current_weapon_stats) {
	
	if global.currenthearttype != 11 {
		exit;	
	}
	
	if InputCheck(INPUT_VERB.SHOOT) || variable_struct_exists(soul_step_status_effects, "temper") || mouse_check_button(mb_left) {
	
		var _mag = _current_weapon_stats.Real_Weapon_Delay * 2;

		var _dur = scr_Get_Status_Time("rocket") + _mag
		_dur = min(400, _dur);
		var _status_effect = {
			"duration": _dur,
			"tick_script": scr_Rocket_Tick,
			"tick_frequency": 1
		}
		variable_struct_set(soul_step_status_effects, "rocket", [_status_effect])
		
		var _status_effect_2 = {
			"duration": 60,
			"magnitude": 1.5
		}
		var _status_effect_3 = {
			"duration": 60,
			"magnitude": 0.85
		}
	
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "essence_mult", _status_effect_2)
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "accuracy_mult", _status_effect_3)
	}
}

function scr_Rocket_Tick() {
	var _dir = point_direction(x, y, obj_Indicator_Parent.x, obj_Indicator_Parent.y) + 180;
	var _mag = scr_Get_Status_Time("rocket") / 60
	x += lengthdir_x(_mag, _dir)
	y += lengthdir_y(_mag, _dir)
	if global.roomtime mod max(1, (6 - round(_mag))) = 0 {
		var color = c_yellow;
		var color_2 = c_orange
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, color, color_2, 1, 8 + random(_mag * 2), _dir + 90 + random(180), 0, 10, 0.25 + random(0.25), 15 + random(15), false)
	}
}
