// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Power_Factor_Calc(_soul){
	return ((10 + _soul.spowerfactor + scr_Get_Status_Magnitude(_soul, "attack_mult")) / 10) * _soul.spower / 10 * scr_Class_Stat_Damage_Multiplier()
}