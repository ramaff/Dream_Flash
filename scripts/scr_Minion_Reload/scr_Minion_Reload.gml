// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Minion_Reload(){
	alarm[0] = sfirerate - 15;
	if alarm[0] < 3 {
		alarm[0] = 3;	
	}

	image_index = 0;
	scr_Soul_Stretch("Vertical", 0.5);
}