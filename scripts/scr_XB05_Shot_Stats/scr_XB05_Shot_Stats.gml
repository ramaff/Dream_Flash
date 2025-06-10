// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XB05_Shot_Stats(_cw, _Shot_Current_Count){
	if global.XB[5] >= 1 {
		if _Shot_Current_Count >= (_cw.Shot_Count / (1 + global.XB[5])) and sWeaponTicker mod 6 = 0 {
			_cw.Shot_Alpha = 0.7;
			_cw.Shot_Power = 0.5 * _cw.Shot_Power;
		}
	}
}