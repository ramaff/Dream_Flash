function scr_D07() {
	// Location Soul Step

		sdelayregenfactor = sdelayregenfactor + sqrt(1 + (max(0, senergy) * global.D[7] / 150)) - 1;

}
