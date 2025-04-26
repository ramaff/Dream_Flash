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
			variable_struct_remove(_status_effects, _status_effects_names)	
		} else {
			for(_j = _status_instances_count - 1; _j >= 0; _j--) {
			
				var _status_instance = _status_effect[_j];
				_status_instance.duration--;
		
				if variable_struct_exists(_status_instance, "tick_script") {
					if _status_instance.duration mod _status_instance.tick_frequency = 0 {
						script_execute(_status_effects.tick_script)
					}
				}
		
				if _status_instance.duration <= 0 {
					array_delete(_status_effect, _j, 1)
				}
			}
		}
		
	}
	

	sattackfactorbuffduration--;
	if sattackfactorbuffduration > 0 and sattackfactorbuffamount > 1 {
		if sattackfactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_red, c_red, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
		}
	}
	if sattackfactorbuffduration < 0 {
	    sattackfactorbuffamount = 0;
	}

	sregenfactorbuffduration--;
	if sregenfactorbuffduration > 0 and sregenfactorbuffamount > 1 {
		if sregenfactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_fuchsia, c_fuchsia, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
		}

	}
	if sregenfactorbuffduration < 0 {
	    sregenfactorbuffamount = 0;
	}

	smovementfactorbuffduration--;
	if smovementfactorbuffduration > 0 and smovementfactorbuffamount > 1 { 	
		var color2 = make_color_rgb(0, 255, 155);
		if smovementfactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, color2, color2, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
			if smovementfactorbuffamount > 5 {
				if smovementfactorbuffduration mod 10 = 0 {
					scr_Disk_Effect(20, 0.75, color2);
				}
			}
		}
	}
	if smovementfactorbuffduration < 0 {
	    smovementfactorbuffamount = 0;
	}

	sfireratefactorbuffduration--;
	if sfireratefactorbuffduration > 0 and sfireratefactorbuffamount > 1 { 
		var color = make_color_rgb(0, 255, 84);	
		if sfireratefactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, color, color, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
		}
	}
	if sfireratefactorbuffduration < 0 {
	    sfireratefactorbuffamount = 0;
	}

}