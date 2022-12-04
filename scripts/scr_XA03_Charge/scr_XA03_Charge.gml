// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Damage Calc

function scr_XA03_Charge(dam){
	if global.XA[3] > 0 {
		global.temperCharge += dam * 3;
	
		if global.temperActive = false and global.temperCharge >= 100 {
			global.temperActive = true;
			global.temperCharge = 0;
		}
	}
}