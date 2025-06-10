// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Poison_Omen(){
	if variable_struct_exists(soul_step_status_effects, "poison_omen") {
		if array_length(soul_step_status_effects.poison_omen) > 0 {
			var _curr_poison = soul_step_status_effects.poison_omen[0].duration
			if _curr_poison > 360 {
				soul_step_status_effects.poison_omen[0].duration -= 360;
				var _status_effect = {
					"duration": 1800,
					"max_duration": 1800,
					"tick_script": scr_Soul_Poison_Tick,
					"tick_frequency": 180
				}
				
				var _status_effect_2 = {
					"duration": 1800,
					"max_duration": 1800,
					"bar_sprite": "spr_Poison_Status_Effect_Bar"
				}
				scr_Soul_Status_Effect_Add(soul_step_status_effects, "poison", _status_effect)
				scr_Soul_Status_Effect_Add(soul_draw_status_effects, "poison", _status_effect_2)
			}
		}
	}
}