// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Q04(){

	if global.Q[4] >= 1 {
		if shot_stats.Shot_Homing_Type = 0 {
	        shot_stats.Shot_Homing_Type = 3;
		}
	    if shot_stats.Shot_Homing_Range < 200 + 200 * global.Q[4] {
	        shot_stats.Shot_Homing_Range = 200 + 200 * global.Q[4];
	    } else {
	        shot_stats.Shot_Homing_Range += 200;
	    }
		
		if shot_stats.Shot_Homing_Speed < 2 + (3 * global.Q[4]) {
			shot_stats.Shot_Homing_Speed = 2 + (3 * global.Q[4]);	
		} else {
			shot_stats.Shot_Homing_Speed += 3
		}
	    //}
	}

}