// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Life_Set(amount = 60){
	shot_stats.Shot_Life_Span = amount
	alarm[0] = shot_stats.Shot_Life_Span;
	shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
}