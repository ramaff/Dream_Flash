// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Shot Creation

function scr_D06(_cw){
	if global.D[6] > 0 {
		_cw.Shot_Speed_Power_Add += 0.02 * _cw.Shot_Power * global.D[6];
		_cw.Shot_Acceleration += 0.05 + (_cw.Shot_Speed / 60);
		_cw.Shot_Life_Span = _cw.Shot_Life_Span * 0.7;
		if _cw.Shot_After_Images < 1 {
			_cw.Shot_After_Images = 1;
		}
	}
}