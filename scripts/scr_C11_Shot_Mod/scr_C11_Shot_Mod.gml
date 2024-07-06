// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_C11_Shot_Mod(excess_essence = 0){

	if global.C[11] >= 1 {
		current_weapon_stats.Shot_Size = sqrt((current_weapon_stats.Shot_Size * current_weapon_stats.Shot_Size) + (0.15 * global.C[11]));
		var boost_fac = (1 + (0.3 * global.C[11]))
		current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * boost_fac;
		current_weapon_stats.Shot_Burst_Power = current_weapon_stats.Shot_Burst_Power * boost_fac
		current_weapon_stats.Shot_Excess_Essence += excess_essence * global.C[11];
		current_weapon_stats.Shot_Instability += current_weapon_stats.Shot_Speed / 2;
		if global.currentweapon = 14 {
			current_weapon_stats.Shot_Excess_Essence += excess_essence * global.C[11] * 2;
		}
		senergy -= excess_essence * global.C[11];
	}

}