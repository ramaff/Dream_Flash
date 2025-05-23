// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_C11_Shot_Mod(_current_weapon_stats, excess_essence = 0){

	if global.C[11] >= 1 {
		_current_weapon_stats.Shot_Size = sqrt((_current_weapon_stats.Shot_Size * _current_weapon_stats.Shot_Size) + (0.15 * global.C[11]));
		var boost_fac = (1 + (0.3 * global.C[11]))
		_current_weapon_stats.Shot_Power = _current_weapon_stats.Shot_Power * boost_fac;
		_current_weapon_stats.Shot_Burst_Power = _current_weapon_stats.Shot_Burst_Power * boost_fac
		_current_weapon_stats.Shot_Excess_Essence += excess_essence * global.C[11];
		_current_weapon_stats.Shot_Instability += _current_weapon_stats.Shot_Speed / 2;
		if global.currentweapon = 14 {
			_current_weapon_stats.Shot_Excess_Essence += excess_essence * global.C[11] * 2;
		}
		senergy -= excess_essence * global.C[11];
	}

}