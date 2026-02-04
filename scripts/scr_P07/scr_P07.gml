function scr_P07() {
	// Location: Extra Shots Stats Script

	var prob = scr_Chance(6);

	if global.P[7] >= 1 and prob = true {
		shot_stats.Shot_Fire += 2 * global.P[7];
		shot_stats.Shot_Speed += 3 * global.P[7];
		speed += 3 * global.P[7];
		
		shot_stats.Shot_Pierce += 1;
		
		if shot_stats.Shot_Fire_Ticks < 6 {
			shot_stats.Shot_Fire_Ticks = 6;
		}
		if shot_stats.Shot_Fire_Time = 0 {
			shot_stats.Shot_Fire_Time = 30;
		}
		
		shotTrail = 1;
		shot_stats.Shot_Trail_Sprite = "spr_Big_Essence_Trail_Bit";
		shot_stats.Shot_Trail_Area = 15;
		shot_stats.Shot_Trail_Life = 20;
		shot_stats.Shot_Trail_Fade = 0;
		shot_stats.Shot_Trail_Color_1 = make_color_rgb(255,246,0);
		shot_stats.Shot_Trail_Color_2 = make_color_rgb(255,119,0);
		shot_stats.Shot_Trail_Hit_Count = 13;
		shot_stats.Shot_Trail_Hit_Life = 10;
	}



}
