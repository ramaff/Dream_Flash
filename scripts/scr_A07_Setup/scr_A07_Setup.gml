// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Shot Creation Script

function scr_A07_Setup(){
	shotA07 = false;
	if global.A07memory >= 0.3 {
		shotA07 = true;
	}
}