function scr_D10() {
	// Location: Shot Creation Script
	if global.D[10] >= 1 {
	    Shot_Count = Shot_Count * 2;
		Shot_Count += global.D[10] - 1;
	}

}
