// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Size_Set(factor = 1){
	shot_stats.Shot_Size = shot_stats.Shot_Size * factor
	image_xscale = shot_stats.Shot_Size;
	image_yscale = shot_stats.Shot_Size;
	shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
}