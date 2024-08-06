function scr_D11(_cw) {
	// Soul Shot Creation
	
	if global.D[11] > 0 {
		_cw.Shot_Friction += (3 / 30) * global.D[11];
		if _cw.Shot_Min_Speed = 1 {
			_cw.Shot_Min_Speed = _cw.Shot_Speed;
		}
		_cw.Shot_Speed += 3 * global.D[11];
	}


}
