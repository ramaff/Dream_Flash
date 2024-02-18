// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bleeding_Soul_Mod(){

	
	if scr_State_Active_Check("Bleeding") {
		
		var _shot_speed = current_weapon_stats.Shot_Speed * 3
		
		current_weapon_stats.Shot_Lobbing = true
		current_weapon_stats.Shot_Speed = _shot_speed * 0.9;
		current_weapon_stats.Shot_Lifespan = current_weapon_stats.Shot_Lifespan * 0.7;
		
		current_weapon_stats.Shot_Direction = point_direction(x, y, mouse_x, mouse_y)
		current_weapon_stats.Shot_Mouse = false;

		current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * 0.8;
		current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * 0.85;

		current_weapon_stats.Shot_Height = max(30, current_weapon_stats.Shot_Height);
		current_weapon_stats.Shot_Fall_Speed = 0;
		current_weapon_stats.Shot_Gravity = 60 / (current_weapon_stats.Shot_Lifespan * current_weapon_stats.Shot_Lifespan);
		current_weapon_stats.Shot_Friction = 1.2 * _shot_speed / current_weapon_stats.Shot_Lifespan;
		
		var _bleed_count = floor(2 * global.soulstateformboost);
		//_bleed_count -= 1;
		
		if frac(global.soulstateformboost) > 0 {
			_bleed_count += scr_Chance(1 / global.soulstateformboost)	
		}
		
		var _i = 0;
		repeat(_bleed_count) {
		
			if Shot_Extra = false {
				Shot_Extra = [json_parse(json_stringify(current_weapon_stats))]
			} else {
				array_push(Shot_Extra, json_parse(json_stringify(current_weapon_stats)))
			}
	
			var _extra_index = array_length(Shot_Extra) - 1;
			
			_shot_speed = _shot_speed * 0.8;
			
			Shot_Extra[_extra_index].Shot_Speed = _shot_speed;
			
			Shot_Extra[_extra_index].Shot_Power = current_weapon_stats.Shot_Power * 0.8;
			Shot_Extra[_extra_index].Shot_Size = current_weapon_stats.Shot_Size * 0.9;
			Shot_Extra[_extra_index].Shot_Direction = current_weapon_stats.Shot_Direction + 5 - (10 * (_i mod 2))
		
			_i++;
		}
		
		
		}

}