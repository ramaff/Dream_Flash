function scr_Check_Special(argument0) {
	iCheck = argument0;

	wCount = 50;


	for(p = 0; p < 100; p++) {
		wSpecial[p] = -1;	
	}

	wSpecial[0] = 19;
	wSpecial[1] = 20;
	wSpecial[2] = 53;
	wSpecial[3] = 113;
	wSpecial[4] = 206;
	wSpecial[5] = 412;
	wSpecial[6] = 413;

	for(q = 0; q < 100; q++) {
		cSpecial[q] = "ZZZ";	
	}

	cSpecial[0] = "A14";
	cSpecial[1] = "B13";
	cSpecial[2] = "C08";
	cSpecial[3] = "D10";
	cSpecial[4] = "E10";
	cSpecial[5] = "F08";

	for(q = 0; q < 100; q++) {
		iSpecial[q] = "ZZZ";	
	}



	for(v = 0; v < wCount; v++) {
		if iCheck = wSpecial[v] {
			return "Special";
		}
		if iCheck = cSpecial[v] {
			return "CSpecial";
		}
	}


	return "Not Special";


}
