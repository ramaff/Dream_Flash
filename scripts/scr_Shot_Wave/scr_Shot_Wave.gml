// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Wave(){
	x += lengthdir_x(shot_stats.Shot_Wave_Direction,direction + 90);
	y += lengthdir_y(shot_stats.Shot_Wave_Direction,direction + 90);
	
	shot_stats.Shot_Wave_Direction -= shot_stats.Shot_Wave_Acceleration;
	image_angle += shot_stats.Shot_Wave_Direction;
	
}