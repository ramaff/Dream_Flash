// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Size_Set(_factor = 1, _logarithmic = true, _shot_stats = shot_stats){
	if _logarithmic == true {
		_shot_stats.Shot_Size = scr_Sqrt_Add(_shot_stats.Shot_Size, _shot_stats.Shot_Size * _factor)
	} else {
		_shot_stats.Shot_Size = _shot_stats.Shot_Size * _factor
	}
	image_xscale = _shot_stats.Shot_Size;
	image_yscale = _shot_stats.Shot_Size;
	_shot_stats.Shot_Size_Max = _shot_stats.Shot_Size;
}