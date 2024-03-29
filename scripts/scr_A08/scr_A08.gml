// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Soul Shot Creation
function scr_A08(){

	if global.A[8] > 0 {
		shot_stats.Shot_Friction += (shot_stats.Shot_Speed / shot_stats.Shot_Life_Span) * global.A[8];
		if shot_stats.Shot_Min_Speed <= 1 {
			shot_stats.Shot_Min_Speed = shot_stats.Shot_Speed * 0.75;
		}
		shot_stats.Shot_Speed += (0.25 * shot_stats.Shot_Speed) * global.A[8];
	}

}