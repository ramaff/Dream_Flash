// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XB05_Shot_Mod(_cw){

	if global.XB[5] >= 1 and sWeaponTicker mod 6 = 0 {
		_cw.Shot_Count = _cw.Shot_Count * (1 + global.XB[5])	
		if _cw.Shot_Spread < 10 {
			_cw.Shot_Spread = 10;	
		}
	}

}