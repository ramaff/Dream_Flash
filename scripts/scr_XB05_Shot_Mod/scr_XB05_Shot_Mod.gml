// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XB05_Shot_Mod(){

	if global.XB[5] >= 1 and sWeaponTicker mod 6 = 0 {
		current_weapon_stats.Shot_Count = current_weapon_stats.Shot_Count * (1 + global.XB[5])	
		if current_weapon_stats.Shot_Spread < 10 {
			current_weapon_stats.Shot_Spread = 10;	
		}
	}

}