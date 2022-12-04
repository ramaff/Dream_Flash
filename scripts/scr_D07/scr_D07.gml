function scr_D07() {
	// Location Soul Step

	
	if global.D[7] > 0 {
		if senergy * global.D[7] >= 500 {
			sdelayregenfactor = sdelayregenfactor + sqrt((senergy * global.D[7]) / 500);
		} else {
			sdelayregenfactor = sdelayregenfactor + ((senergy * global.D[7]) / 500);
		}
	}

}
