// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Shot Creation

function scr_D06(){
	if global.D[6] > 0 {
		Shot_Speed_Power_Add += 0.2 * global.D[6];
		Shot_Acceleration += 0.033 * global.D[6];
	}
}