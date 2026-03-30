// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// loc: shot creation

function scr_XA04_Weapon_Mod(){

	var accuracyOffset = 0;
	if global.XA[4] > 0 and global.currenthearttype = 53 {
		if sWeaponTicker mod 10 < 5 {
			accuracyOffset = -60 + ((sWeaponTicker mod 5) * 24);
		} else {
			accuracyOffset = 60 - ((sWeaponTicker mod 5) * 24);
		}
	}
	return accuracyOffset;

}