// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Expand_Before_Contract(_expand_time = 60, _expand_rate = 0.01){

	if alarm[0] <= _expand_time and alarm[0] > 15 {
		bulletsize += bulletsize * _expand_rate;
	
		image_xscale = bulletsize;
		image_yscale = bulletsize;
	} 

}