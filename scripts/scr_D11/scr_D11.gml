function scr_D11(_cw) {
	// Soul Shot Creation
	
	if global.D[11] > 0 {
		if _cw.Shot_Min_Speed = 0 and _cw.Shot_Friction = 0 {
			_cw.Shot_Min_Speed = _cw.Shot_Speed;
		}
		_cw.Shot_Friction += (4 / 30) * global.D[11];
		_cw.Shot_Speed += 4 * global.D[11];
	}


}
