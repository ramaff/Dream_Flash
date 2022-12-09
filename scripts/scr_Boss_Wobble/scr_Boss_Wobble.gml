// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Wobble(wobble_direction, wobble_range = 0.2, duration_time = 1, offset = 0){
	
	//var cSize = bossSize;

	//bossHeight = bossHeight + scr_Wave(-1 * height_range / h_velocity, height_range / h_velocity, duration_time, offset);
	var sizeSpeed = scr_Wave(-1 * wobble_range / 60, wobble_range / 60, duration_time, offset);

	scr_Boss_Stretch(wobble_direction, sizeSpeed)

}