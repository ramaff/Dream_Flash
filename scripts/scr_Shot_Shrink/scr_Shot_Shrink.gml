// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Shrink(){
	shot_stats.Shot_Size -= shot_stats.Shot_Size_Max / shot_stats.Shot_Life_Span;
	image_xscale = shot_stats.Shot_Size;
	image_yscale = shot_stats.Shot_Size;
}