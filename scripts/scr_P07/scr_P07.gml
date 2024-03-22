function scr_P07() {
	// Location: Extra Shots Stats Script

	var prob = scr_Chance(4);

	if global.P[7] >= 1 and prob = true {
		shotfire += 2 * global.P[7];
		shot_stats.Shot_Speed += 3 * global.P[7];
		speed += 3 * global.P[7];
		
		shotpierce += 1;
		
		if shotfireticks < 3 {
			shotfireticks = 3;
		}
		if shotfiretime = 0 {
			shotfiretime = 90;
		}
		
		shotTrail = 1;
		shottrailsprite = spr_Big_Essence_Trail_Bit;
		shottrailarea = 15;
		shottraillife = 20;
		shottrailfade = 0;
		shottrailcolor1 = make_color_rgb(255,246,0);
		shottrailcolor2 = make_color_rgb(255,119,0);
		shottrailhitcount = 13;
		shottrailhitlife = 10;
	}



}
