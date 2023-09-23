// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Negative_Room_Check(){

	var fieldType = global.floor[global.currentroom,0];
	
	if fieldType = "Loathing Field" || fieldType = "Paranoia Field" || fieldType = "Despair Field" {
		return false;	
	}

	return true;
}