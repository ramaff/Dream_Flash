// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Height_Bob(height_range = 40, duration_time = 1, offset = 0){
	
	var cHeight = bossHeight

	var h_velocity = 60;

	bossHeight = bossHeight + scr_Wave(-1 * height_range / h_velocity, height_range / h_velocity, duration_time, offset);

	y -= bossHeight - cHeight;

}