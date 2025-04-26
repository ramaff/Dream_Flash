// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Poison_Omen(){
	if variable_struct_exists(soul_step_status_effects, "poison_omen") {
		if array_length(soul_step_status_effects.poison_omen) > 0 {
			var _curr_poison = soul_step_status_effects.poison_omen[0].duration
			if _curr_poison > 360 {
				soul_step_status_effects.poison_omen[0].duration -= 420;
				var _status_effect = {
					"duration": 720,
					"tick_script": scr_Soul_Poison_Tick,
					"tick_frequency": 120
				}
				variable_struct_set(soul_step_status_effects, "poison", [_status_effect])
			}
		}
	}
}