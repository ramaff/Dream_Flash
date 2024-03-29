// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_D03(){

	if global.D[3] > 0 {
		
		//Weapon_Split_Visible = 1;
        //Weapon_Split_Hit_Again = 1;
		
		current_weapon_stats.Shot_Lobbing = true
		current_weapon_stats.Shot_Speed = current_weapon_stats.Shot_Speed * 1.4;
		current_weapon_stats.Shot_Life_Span = current_weapon_stats.Shot_Life_Span * 0.7;
		current_weapon_stats.Shot_Height = 0;
		current_weapon_stats.Shot_Fall_Speed = -4;
		current_weapon_stats.Shot_Gravity = 8 / current_weapon_stats.Shot_Life_Span;
		
		
		repeat(global.D[3]) {
		
			if current_weapon_stats.Shot_Extra = false {
				current_weapon_stats.Shot_Extra = [json_parse(json_stringify(current_weapon_stats))]
			} else {
				array_push(current_weapon_stats.Shot_Extra, json_parse(json_stringify(current_weapon_stats)))
			}
	
			var _extra_index = array_length(current_weapon_stats.Shot_Extra) - 1;
			
			current_weapon_stats.Shot_Extra[_extra_index].Shot_Power = current_weapon_stats.Shot_Power * 0.2;
			current_weapon_stats.Shot_Extra[_extra_index].Shot_Size = current_weapon_stats.Shot_Size * 0.6;
			current_weapon_stats.Shot_Extra[_extra_index].Shot_Speed = current_weapon_stats.Shot_Speed * (0.6 + random(0.6));
		
		}
		
		
		}

}