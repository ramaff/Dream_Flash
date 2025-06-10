// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Grow(){
	image_xscale += (shot_stats.Shot_Size_Max - shot_stats.Shot_Grow_Size) / shot_stats.Shot_Grow_Time;
	image_yscale += (shot_stats.Shot_Size_Max - shot_stats.Shot_Grow_Size) / shot_stats.Shot_Grow_Time;

	if image_xscale > shot_stats.Shot_Size_Max {
	    image_xscale = shot_stats.Shot_Size_Max;
	    image_yscale = shot_stats.Shot_Size_Max;
	}
}