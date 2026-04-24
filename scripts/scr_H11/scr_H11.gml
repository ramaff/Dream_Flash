// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_H11_Status_Build_Up(_current_weapon_stats) {
	
	if global.currentheart != 11 {
		exit;	
	}
	
	if InputCheck(INPUT_VERB.SHOOT) || variable_struct_exists(soul_step_status_effects, "temper") || mouse_check_button(mb_left) {
	
		var _mag = _current_weapon_stats.Real_Weapon_Delay * 2;

		var _dur = scr_Get_Status_Time("rocket") + _mag
		_dur = min(300, _dur);
		var _status_effect = {
			"duration": _dur,
			"tick_script": scr_Rocket_Tick,
			"tick_frequency": 1
		}
		variable_struct_set(soul_step_status_effects, "rocket", [_status_effect])
		
		var _status_effect_2 = {
			"duration": 30,
			"magnitude": 2
		}
	
		scr_Soul_Status_Effect_Add(soul_step_status_effects, "essence_mult", _status_effect_2)
	}
}

function scr_Rocket_Tick() {
	var _dir = point_direction(x, y, obj_Indicator_Parent.x, obj_Indicator_Parent.y) + 180;
	var _mag = scr_Get_Status_Time("rocket") / 40
	x += lengthdir_x(_mag, _dir)
	y += lengthdir_y(_mag, _dir)
	//var color = c_white;
	//var color_2 = make_colour_rgb(255, 200, 200)
	//scr_Particle_Burst(obj_Fire_Part, spr_medium_gas_cloud_opac, color, color_2, 1, 2 + random(4), 0 + random(180), 0, 80, 0.15 + random(0.35), 60 + random(35), false)
}
