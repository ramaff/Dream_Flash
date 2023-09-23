// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Height_Bob(_height_range = 40, _duration_time = 1, _offset = 0){
	
	var _c_height = boss_height

	var _h_velocity = 60;

	boss_height = boss_height + scr_Wave(-1 * _height_range / _h_velocity, _height_range / _h_velocity, _duration_time, _offset);

	y -= boss_height - _c_height;

}