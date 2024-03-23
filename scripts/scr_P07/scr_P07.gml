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
		shot_stats.Shot_Trail_Sprite = spr_Big_Essence_Trail_Bit;
		shot_stats.Shot_Trail_Area = 15;
		shot_stats.Shot_Trail_Life = 20;
		shot_stats.Shot_Trail_Fade = 0;
		shot_stats.Shot_Trail_Color1 = make_color_rgb(255,246,0);
		shot_stats.Shot_Trail_Color2 = make_color_rgb(255,119,0);
		shot_stats.Shot_Trail_Hit_Count = 13;
		shot_stats.Shot_Trail_Hit_Life = 10;
	}



}
