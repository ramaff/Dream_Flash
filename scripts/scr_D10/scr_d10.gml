function scr_D10(_cw) {
	// Location: Shot Creation Script
	if global.D[10] >= 1 {
	    _cw.Shot_Count = _cw.Shot_Count * 2;
		_cw.Shot_Count += global.D[10] - 1;
	}

}
