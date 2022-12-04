function scr_U02() {
	// Soul Step After Event

	if global.U[2] > 0 and global.roomtime >= 600 {
	    sdelayregenfactor += sdelayregenfactor * (global.U[2] * 0.3);
		energyregenfactor += energyregenfactor * (global.U[2] * 0.45);
	}


}
