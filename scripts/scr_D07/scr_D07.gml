function scr_D07() {
	// Location Soul Step

	if global.D[7] > 0 {
		sdelayregenfactor = sdelayregenfactor + sqrt(1 + (max(0, senergy) * global.D[7] / 150)) - 1;
	}

}
