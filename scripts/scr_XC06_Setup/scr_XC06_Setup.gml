// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location: extra shot stats

function scr_XC06_Setup(){

	if global.XC[6] >= 1 {
		//followtarget = other.id;
		feartarget = noone;
		shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 2;
		alarm[0] = shot_stats.Shot_Life_Span;
		shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
	}

}