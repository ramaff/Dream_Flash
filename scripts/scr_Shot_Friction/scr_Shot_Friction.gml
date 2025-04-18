// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Friction(){
	shot_stats.Shot_Speed -= shot_stats.Shot_Friction;
	speed -= shot_stats.Shot_Friction;
	if shot_stats.Shot_Speed < shot_stats.Shot_Min_Speed {
	    shot_stats.Shot_Speed = shot_stats.Shot_Min_Speed;
	    speed = shot_stats.Shot_Min_Speed;
	}
}