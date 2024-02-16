// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bleeding_Soul_Mod(){

	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}
	
	if scr_State_Active_Check("Bleeding", reverie) {
		
		var _shot_speed = current_weapon_stats.Shot_Speed * 2
		
		current_weapon_stats.Shot_Lobbing = true
		current_weapon_stats.Shot_Speed = _shot_speed;
		current_weapon_stats.Shot_Lifespan = current_weapon_stats.Shot_Lifespan * 0.7;
		current_weapon_stats.Shot_Height = 30;
		current_weapon_stats.Shot_Fall_Speed = 0;
		current_weapon_stats.Shot_Gravity = 60 / (current_weapon_stats.Shot_Lifespan * current_weapon_stats.Shot_Lifespan);
		current_weapon_stats.Shot_Friction = 1.2 * _shot_speed / current_weapon_stats.Shot_Lifespan;
		
		var _bleed_count = floor(2 * global.soulstateformboost);
		_bleed_count -= 1;
		
		if frac(global.soulstateformboost) > 0 {
			_bleed_count += scr_Chance(1 / global.soulstateformboost)	
		}
		
		repeat(_bleed_count) {
		
			if Shot_Extra = false {
				Shot_Extra = [json_parse(json_stringify(current_weapon_stats))]
			} else {
				array_push(Shot_Extra, json_parse(json_stringify(current_weapon_stats)))
			}
	
			var _extra_index = array_length(Shot_Extra) - 1;
			
			_shot_speed = _shot_speed * 0.7;
			
			Shot_Extra[_extra_index].Shot_Power = current_weapon_stats.Shot_Power * 0.8;
			Shot_Extra[_extra_index].Shot_Size = current_weapon_stats.Shot_Size * 0.7;
			Shot_Extra[_extra_index].Shot_Speed = _shot_speed;
		
		}
		
		
		}

}