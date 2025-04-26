// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Defense_Calc(_soul){
	return (_soul.sdefenseadd + scr_Get_Status_Magnitude(_soul, "defense_add")) + global.currentheartdefense + scr_Class_Stat_Defense_Increase()
}