// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Power_Set(factor = 1){
	shot_stats.Shot_Power = shot_stats.Shot_Power * factor;
	shot_stats.Shot_Aura_Power = shot_stats.Shot_Aura_Power * factor;
	shot_stats.Shot_Power_Max = shot_stats.Shot_Power;
	
	shotPowelLevel = shot_stats.Shot_Power_Level * factor;
}