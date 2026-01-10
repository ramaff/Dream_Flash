// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA04_Proc(){
	if shot_stats.Shot_Wishful > 0 {
		shot_stats.Shot_Power += 0.2 + (shot_stats.Shot_Power * 0.02 * shot_stats.Shot_Wishful);
		//scr_Shot_Power_Set(1 + 0.025 * shot_stats.Shot_Wishful)
		
		shot_stats.Shot_Size_Max = sqrt((shot_stats.Shot_Size_Max * shot_stats.Shot_Size_Max) + (0.05 * shot_stats.Shot_Wishful));
		shot_stats.Shot_Size = shot_stats.Shot_Size_Max;
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
	}
}