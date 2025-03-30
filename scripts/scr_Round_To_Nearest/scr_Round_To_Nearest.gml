// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Round to the nearest 'x' value (ie 12 gets rounded to 10 if rounding by 5)
function scr_Round_To_Nearest(value = 3, interval = 5){
	return interval * round(value / interval);
}