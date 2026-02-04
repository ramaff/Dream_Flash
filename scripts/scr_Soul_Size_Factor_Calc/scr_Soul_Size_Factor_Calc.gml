// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Size_Factor_Calc(_soul){
	return scr_Sqrt_Add(1 + _soul.sshotsizefactor, scr_Get_Status_Magnitude(_soul, "attack_size_mult"))
}