// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Soul Shot Creation
function scr_A08(_cw){

	if global.A[8] > 0 {
		_cw.Shot_Friction += (_cw.Shot_Speed / _cw.Shot_Life_Span) * global.A[8];
		if _cw.Shot_Min_Speed <= 1 {
			_cw.Shot_Min_Speed = _cw.Shot_Speed * 0.75;
		}
		_cw.Shot_Speed += (0.25 * _cw.Shot_Speed) * global.A[8];
	}

}