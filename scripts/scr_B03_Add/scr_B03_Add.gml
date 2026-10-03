// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: heart loss event

function scr_B03_Add(){
	if global.B[3] > 0 {
		scr_Add_New_Heart(103, 20 + (20 * global.B[3]));
	}
}