// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_P05(_current_weapon_stats){

	if global.P[5] > 0 {
		
		var _pow_boost = (1 + (2 *global.P[5]))
		var _delay_boost = (1 + (global.P[5]))
		var _cost_boost = (1 + (1.5 * global.P[5]))
		var _size_boost = sqrt(1 + (2 * global.P[5]))
		
		_current_weapon_stats.Shot_Power = _current_weapon_stats.Shot_Power * _pow_boost;
		_current_weapon_stats.Shot_Charge_Power = _current_weapon_stats.Shot_Charge_Power * _pow_boost;
		_current_weapon_stats.Shot_Fire = _current_weapon_stats.Shot_Fire * _pow_boost;
		_current_weapon_stats.Shot_Poison = _current_weapon_stats.Shot_Poison * _pow_boost;
		_current_weapon_stats.Shot_Bleed = _current_weapon_stats.Shot_Bleed * _pow_boost;
		
		_current_weapon_stats.Shot_Knock_Back += 3;
		_current_weapon_stats.Shot_Life_Span = _current_weapon_stats.Shot_Life_Span * 1.3
		_current_weapon_stats.Shot_Continue = 1;

		_current_weapon_stats.Shot_Size = _current_weapon_stats.Shot_Size * _size_boost;
		_current_weapon_stats.Shot_Charge_Size = _current_weapon_stats.Shot_Charge_Size * _size_boost;
		
		_current_weapon_stats.Essence = _current_weapon_stats.Essence * _cost_boost;
		_current_weapon_stats.Charge_Essence = _current_weapon_stats.Charge_Essence * _cost_boost;
		_current_weapon_stats.Delay = _current_weapon_stats.Delay * _delay_boost;
		_current_weapon_stats.Charge_Time = _current_weapon_stats.Charge_Time * _delay_boost;
	}

}