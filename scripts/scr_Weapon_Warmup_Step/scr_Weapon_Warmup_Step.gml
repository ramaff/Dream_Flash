// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Weapon_Warmup_Step(){
	sWeaponWarmUp -= 300 / 180;
	if sWeaponWarmUp < 0 {
		sWeaponWarmUp = 0;	
	}
	if sWeaponWarmUp > 300 {
		sWeaponWarmUp = 300;	
	}
}