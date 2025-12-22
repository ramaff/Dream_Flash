// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bleeding_Soul_Mod(_cw = current_weapon_stats){

	
	if scr_State_Active_Check("Bleeding") {
		
		var _shot_speed = _cw.Shot_Speed * 3
		var _shot_lifespan = _cw.Shot_Life_Span * 0.7;
		var _shot_power = _cw.Shot_Power * 0.6;
		var _shot_size = _cw.Shot_Size * 0.85;
		
		_cw.Shot_Lobbing = true
		_cw.Shot_Speed = _shot_speed;
		
		_cw.Shot_Direction = point_direction(x, y, obj_Astral_Indicator.x, obj_Astral_Indicator.y)
		_cw.Shot_Mouse = false;

		_cw.Shot_Height = min(30, _cw.Shot_Height + 30);
		_cw.Shot_Fall_Speed = 0;
		_cw.Shot_Gravity = ((2 * _cw.Shot_Height) / (_shot_lifespan * _shot_lifespan))
		
		var _bleed_count = 1 + floor(1 * global.soulstateformboost);
		//_bleed_count -= 1;
		
		if frac(global.soulstateformboost) > 0 {
			_bleed_count += scr_Chance(1 / global.soulstateformboost)	
		}
		
		var _og_stats = scr_Dupe_Struct(_cw)
		
		var _i = 0;
		repeat(_bleed_count) {
		
			if _cw.Shot_Extra = false {
				_cw.Shot_Extra = [scr_Dupe_Struct(_og_stats)]
			} else {
				array_push(_cw.Shot_Extra, scr_Dupe_Struct(_og_stats))
			}
	
			var _extra_index = array_length(_cw.Shot_Extra) - 1;
			
			_cw.Shot_Extra[_extra_index].Shot_Speed = _shot_speed;
			_cw.Shot_Extra[_extra_index].Shot_Life_Span = _shot_lifespan;
			_cw.Shot_Extra[_extra_index].Shot_Power = _shot_power;
			_cw.Shot_Extra[_extra_index].Shot_Size = _shot_size;
			_cw.Shot_Extra[_extra_index].Shot_Friction = 1.4 * _shot_speed / _shot_lifespan;
			
			_shot_speed = _shot_speed * 0.8;
			
			//Shot_Extra[_extra_index].Shot_Direction = _cw.Shot_Direction + 5 - (10 * (_i mod 2))
		
			_i++;
		}
		//_cw.Shot_Extra = _cw.Shot_Extra;
		
		
		}

}