// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Size_Set(_factor = 1, _logarithmic = true){
	if _logarithmic == true {
		shot_stats.Shot_Size = scr_Sqrt_Add(shot_stats.Shot_Size, shot_stats.Shot_Size * _factor)
	} else {
		shot_stats.Shot_Size = shot_stats.Shot_Size * _factor
	}
	image_xscale = shot_stats.Shot_Size;
	image_yscale = shot_stats.Shot_Size;
	shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
}