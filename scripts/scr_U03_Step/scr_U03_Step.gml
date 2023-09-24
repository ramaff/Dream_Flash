// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Weapon use

function scr_U03_Step(){
	if global.U[3] > 0 {
		global.U03boost += 1.5 * (1 + global.U[3]);

		if (global.U03boost >= (global.U[3] * 500)) {
			global.U03boost = global.U[3] * 500;	
		}
	}
}