// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Extra Shot Stats


function scr_U09(){
	if global.U[9] > 0 {
		if shot_stats.Shot_Freeze_Type <= 1 {
            shot_stats.Shot_Freeze_Type += 0.1 * global.U[9];
        }
        if shot_stats.Shot_Freeze < 2 {
            shot_stats.Shot_Freeze = 2;
        }
        if shot_stats.Shot_Freeze_Time < 60 {
            shot_stats.Shot_Freeze_Time = 60;
        }
	}
}