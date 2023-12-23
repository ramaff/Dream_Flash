// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XB05_Shot_Mod(){

	if global.XB[5] >= 1 and sWeaponTicker mod 6 = 0 {
		Shot_Count = Shot_Count * (1 + global.XB[5])	
		if Shot_Spread < 10 {
			Shot_Spread = 10;	
		}
	}

}