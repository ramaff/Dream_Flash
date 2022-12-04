function scr_P06() {
	// Location: Extra Shots Stats Script

	var prob = scr_Chance(4);

	if global.P[6] >= 1 and prob = true {
		shotpoison += 2 * global.P[6];
		if shotpoisonticks < 4 {
			shotpoisonticks = 4;
		}
		if shotpoisontime = 0 {
			shotpoisontime = 90;
		}
	}



}
