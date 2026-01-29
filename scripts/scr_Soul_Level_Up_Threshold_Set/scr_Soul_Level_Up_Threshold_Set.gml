// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Level_Up_Threshold_Set(){
	global.soul_xp_threshold = (5 + ((10 + (5 * global.soul_level)) * global.soul_level)) * global.soul_xp_threshold_mult;
}