// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Power_Set(factor = 1, _shot_stats = shot_stats){
	_shot_stats.Shot_Power = _shot_stats.Shot_Power * factor;
	_shot_stats.Shot_Aura_Power = _shot_stats.Shot_Aura_Power * factor;
	_shot_stats.Shot_Power_Max = _shot_stats.Shot_Power;
}