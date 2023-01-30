// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// weapon list script

function scr_XC06_Cost_Adjustment(){

	if global.XC[6] > 0 {
		weaponCost = weaponCost * 0.66;
		weaponDelay = weaponDelay * 0.83;
	}

}