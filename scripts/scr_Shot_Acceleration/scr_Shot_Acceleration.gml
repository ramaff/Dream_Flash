// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Acceleration(){
	shot_stats.Shot_Speed += shot_stats.Shot_Acceleration;
	speed += shot_stats.Shot_Acceleration;
	if shot_stats.Shot_Speed > shot_stats.Shot_Max_Speed {
	    shot_stats.Shot_Speed = shot_stats.Shot_Max_Speed;
	    speed = shot_stats.Shot_Max_Speed;
	}
	if shot_stats.Shot_Speed < shot_stats.Shot_Min_Speed {
	    shot_stats.Shot_Speed = shot_stats.Shot_Min_Speed;
	    speed = shot_stats.Shot_Min_Speed;
	}
}