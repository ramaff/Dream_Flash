function scr_P02_Swap() {
	// var changes in heart loss

	if global.P[2] > 0 {

	if global.P02status = 0 {
		global.P02status = 1;
		global.soulhopeTemp -= 5 + 5 * global.P[2];
		global.souldespairTemp += 5 + 5 * global.P[2];
	
		return;
	}

	if global.P02status = 1 {
		global.P02status = 0;
		global.soulhopeTemp += 5 + 5 * global.P[2];
		global.souldespairTemp -= 5 + 5 * global.P[2];
	
		return;
	}

	}


}
