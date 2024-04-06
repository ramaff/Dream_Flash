// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Shot Creation

function scr_D06(){
	if global.D[6] > 0 {
		current_weapon_stats.Shot_Speed_Power_Add += 0.02 * current_weapon_stats.Shot_Power * global.D[6];
		current_weapon_stats.Shot_Acceleration += 0.05 + (current_weapon_stats.Shot_Speed / 60);
		current_weapon_stats.Shot_Life_Span = current_weapon_stats.Shot_Life_Span * 0.7;
		if current_weapon_stats.Shot_After_Images < 1 {
			current_weapon_stats.Shot_After_Images = 1;
		}
	}
}