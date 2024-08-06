// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Shot Creation Script

function scr_A07_Setup(){
	if global.A07memory > 0 {
		scr_Shot_Power_Set(1 + global.A07memory)
		scr_Shot_Size_Set(global.A07memory)
	}
}