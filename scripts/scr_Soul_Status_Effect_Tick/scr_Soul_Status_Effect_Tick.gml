// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Status_Effect_Tick(_status_effects = {}){
	
	var _status_effects_names = struct_get_names(_status_effects)
	var _status_effects_count = array_length(_status_effects_names)
	
	var _i;
	var _j;
	for(_i = 0; _i < _status_effects_count; _i++) {
		var _status_effect = variable_struct_get(_status_effects, _status_effects_names[_i]);
		var _status_instances_count = array_length(_status_effect)
		
		if _status_instances_count <= 0 {
			variable_struct_remove(_status_effects, _status_effects_names[_i])	
		} else {
			for(_j = _status_instances_count - 1; _j >= 0; _j--) {
			
				var _status_instance = _status_effect[_j];
				_status_instance.duration--;
		
				if variable_struct_exists(_status_instance, "tick_script") {
					if _status_instance.duration mod _status_instance.tick_frequency = 0 {
						script_execute(_status_instance.tick_script)
					}
				}
		
				if _status_instance.duration <= 0 {
					array_delete(_status_effect, _j, 1)
				}
			}
		}
	}

}