// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_P05(){

	if global.P[5] > 0 {
		
		var _pow_boost = (1 + global.P[5])
		var _cost_boost = (1 + (0.8 * global.P[5]))
		var _size_boost = sqrt(1 + (0.5 * global.P[5]))
		
		current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * _pow_boost;
		current_weapon_stats.Shot_Charge_Power = current_weapon_stats.Shot_Charge_Power * _pow_boost;
		current_weapon_stats.Shot_Fire = current_weapon_stats.Shot_Fire * _pow_boost;
		current_weapon_stats.Shot_Poison = current_weapon_stats.Shot_Poison * _pow_boost;
		current_weapon_stats.Shot_Bleed = current_weapon_stats.Shot_Bleed * _pow_boost;
		
		current_weapon_stats.Shot_Knockback += 3;
		current_weapon_stats.Shot_Life_Span = current_weapon_stats.Shot_Life_Span * 1.2

		current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * _size_boost;
		current_weapon_stats.Shot_Charge_Size = current_weapon_stats.Shot_Charge_Size * _size_boost;
	
		
		current_weapon_stats.Essence = current_weapon_stats.Essence * _cost_boost;
		current_weapon_stats.Charge_Essence = current_weapon_stats.Charge_Essence * _cost_boost;
		current_weapon_stats.Delay = current_weapon_stats.Delay * _cost_boost;
		current_weapon_stats.Charge_Time = current_weapon_stats.Charge_Time * _cost_boost;
	}

}