// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Soul Shot Creation
function scr_A08(){

	if global.A[8] > 0 {
		Shot_Friction += (Shot_Speed / Shot_Lifespan) * global.A[8];
		if Shot_Min_Speed <= 1 {
			Shot_Min_Speed = Shot_Speed * 0.75;
		}
		Shot_Speed += (0.25 * Shot_Speed) * global.A[8];
	}

}