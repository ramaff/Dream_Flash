// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// loc: weapon list

function scr_XA03_Cost_Adjustment(){

	if global.temperActive = true {
		repeat(global.XA[3]) {
			weaponCost = weaponCost * 0.8;
			weaponDelay = weaponDelay * 0.6;
		}
	}

}