// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Soul Shot Creation
function scr_A08(){

	if global.A[8] > 0 {
		current_weapon_stats.Shot_Friction += (current_weapon_stats.Shot_Speed / current_weapon_stats.Shot_Life_Span) * global.A[8];
		if current_weapon_stats.Shot_Min_Speed <= 1 {
			current_weapon_stats.Shot_Min_Speed = current_weapon_stats.Shot_Speed * 0.75;
		}
		current_weapon_stats.Shot_Speed += (0.25 * current_weapon_stats.Shot_Speed) * global.A[8];
	}

}