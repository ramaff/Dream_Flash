// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Size_Proportional_To_Damage(){
	var size = shot_stats.Shot_Size * (shot_stats.Shot_Power / shot_stats.Shot_Power_Max);
	image_xscale = size;
	image_yscale = size;
}