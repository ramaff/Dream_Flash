// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XB06(){

	if global.XB[6] >= 1 {
		instance_create_depth(x,y,0,obj_Social_Anxiety_Control);	
	}

}