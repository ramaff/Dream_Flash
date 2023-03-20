// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Round_To_Nearest(value = 3, interval = 5){
	return interval * round(value / interval);
}