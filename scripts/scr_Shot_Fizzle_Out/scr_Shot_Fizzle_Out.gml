// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Fizzle_Out(){
	var _remaining_time = max(shot_stats.Shot_Life_Span - shot_stats.Shot_Exist_Time, alarm[0])

	if _remaining_time < 10 {
		shot_stats.Shot_Size -= shot_stats.Shot_Size / _remaining_time
		shot_stats.Shot_Size = clamp(shot_stats.Shot_Size, 0.01, 2)
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
	} 
}