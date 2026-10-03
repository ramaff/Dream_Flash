// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_D03(_current_weapon_stats){

	if global.D[3] > 0 {
		
		//Weapon_Split_Visible = 1;
        //Weapon_Split_Hit_Again = 1;
		
		_current_weapon_stats.Shot_Lobbing = true
		_current_weapon_stats.Shot_Speed = _current_weapon_stats.Shot_Speed * 1.4;
		_current_weapon_stats.Shot_Life_Span = _current_weapon_stats.Shot_Life_Span * 0.7;
		_current_weapon_stats.Shot_Height = 0;
		_current_weapon_stats.Shot_Fall_Speed = -4;
		_current_weapon_stats.Shot_Gravity = 8 / _current_weapon_stats.Shot_Life_Span;
		
		var _og_stats = variable_clone(_current_weapon_stats)
		repeat(global.D[3]) {
		
			if _current_weapon_stats.Shot_Extra = false {
				_current_weapon_stats.Shot_Extra = [variable_clone(_og_stats)]
			} else {
				array_push(_current_weapon_stats.Shot_Extra, variable_clone(_og_stats))
			}
	
			var _extra_index = array_length(_current_weapon_stats.Shot_Extra) - 1;
			
			_current_weapon_stats.Shot_Extra[_extra_index].Shot_Power = _current_weapon_stats.Shot_Power * 0.4;
			_current_weapon_stats.Shot_Extra[_extra_index].Shot_Size = _current_weapon_stats.Shot_Size * 0.6;
			_current_weapon_stats.Shot_Extra[_extra_index].Shot_Speed = _current_weapon_stats.Shot_Speed * (0.6 + random(0.6));
		
		}
		
		
		}

}