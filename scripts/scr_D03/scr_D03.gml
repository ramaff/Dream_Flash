// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_D03(){

	if global.D[3] > 0 {
		
		//Weapon_Split_Visible = 1;
        //Weapon_Split_Hit_Again = 1;
		
		current_weapon_stats.Shot_Lobbing = true
		current_weapon_stats.Shot_Speed = current_weapon_stats.Shot_Speed * 1.4;
		current_weapon_stats.Shot_Lifespan = current_weapon_stats.Shot_Lifespan * 0.7;
		current_weapon_stats.Shot_Height = 0;
		current_weapon_stats.Shot_Fall_Speed = -4;
		current_weapon_stats.Shot_Gravity = 8 / current_weapon_stats.Shot_Lifespan;
		
		
		repeat(global.D[3]) {
		
			if Shot_Extra = false {
				Shot_Extra = [json_parse(json_stringify(current_weapon_stats))]
			} else {
				array_push(Shot_Extra, json_parse(json_stringify(current_weapon_stats)))
			}
	
			var _extra_index = array_length(Shot_Extra) - 1;
			
			Shot_Extra[_extra_index].Shot_Power = current_weapon_stats.Shot_Power * 0.2;
			Shot_Extra[_extra_index].Shot_Size = current_weapon_stats.Shot_Size * 0.6;
			Shot_Extra[_extra_index].Shot_Speed = current_weapon_stats.Shot_Speed * (0.6 + random(0.6));
			
			/*variable_struct_set(Shot_Extra[_extra_index], "Burst_Power", 0.7); 
			variable_struct_set(Shot_Extra[_extra_index], "Burst_Size", 0.8); 
			variable_struct_set(Shot_Extra[_extra_index], "Air_Burst", true); 
			variable_struct_set(Shot_Extra[_extra_index], "Range", 100); 
			var amount = 2 + (global.OB[6] * 2)
			variable_struct_set(Shot_Extra[_extra_index], "Amount", amount); 
			variable_struct_set(Shot_Extra[_extra_index], "Spread", 360 / amount);*/
		
		}
		
		
		}

}