// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Class_Stat_Damage_Multiplier(){
	return 1 + ((global.soulstrength + global.soulstrengthTemp) / 200) + ((global.soulloathing + global.soulloathingTemp) / 320);
}