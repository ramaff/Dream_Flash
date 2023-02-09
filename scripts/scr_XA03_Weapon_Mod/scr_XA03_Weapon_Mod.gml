// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// loc: shot creation

function scr_XA03_Weapon_Mod(){

	var accuracyOffset = 0;
	if global.temperActive = true {
		if sWeaponTicker mod 10 < 5 {
			accuracyOffset = -60 + ((sWeaponTicker mod 5) * 24);
		} else {
			accuracyOffset = 60 - ((sWeaponTicker mod 5) * 24);
		}
	}
	return accuracyOffset;

}