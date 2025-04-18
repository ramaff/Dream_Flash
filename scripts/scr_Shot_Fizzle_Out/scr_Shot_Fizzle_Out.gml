// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Fizzle_Out(){
	if (alarm[0] <= (shot_stats.Shot_Life_Span / 10)) and shot_stats.Shot_Comeback = 0 and shot_stats.Shot_Lobbing = 0 {
		shot_stats.Shot_Size_Relation = ((alarm[0] * 10) / shot_stats.Shot_Life_Span);
	}
}