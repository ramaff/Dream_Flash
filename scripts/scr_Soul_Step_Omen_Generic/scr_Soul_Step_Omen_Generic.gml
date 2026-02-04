// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Step_Omen_Generic(_omen_name, _omen_max_time, _main_event_script){
	if variable_struct_exists(soul_step_status_effects, _omen_name) {
		var _omen_effect = variable_struct_get(soul_step_status_effects, _omen_name)
		if array_length(_omen_effect) > 0 {
			var _curr_time = _omen_effect[0].duration
			if _curr_time > _omen_max_time {
				_omen_effect[0].duration -= _omen_max_time;
				if variable_struct_exists(soul_draw_status_effects, _omen_name) {
					var _omen_draw_effect = variable_struct_get(soul_draw_status_effects, _omen_name)
					if array_length(_omen_draw_effect) > 0 {
						_omen_draw_effect[0].duration -= _omen_max_time;
					}
				}
				script_execute(_main_event_script)
			}
		}
	}
}