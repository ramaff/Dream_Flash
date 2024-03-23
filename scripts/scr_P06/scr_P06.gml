function scr_P06() {
	// Location: Extra Shots Stats Script

	var prob = scr_Chance(4);

	if global.P[6] >= 1 and prob = true {
		shot_stats.Shot_Poison += 2 * global.P[6];
		if shot_stats.Shot_Poison_Ticks < 4 {
			shot_stats.Shot_Poison_Ticks = 4;
		}
		if shot_stats.Shot_Poison_Time = 0 {
			shot_stats.Shot_Poison_Time = 90;
		}
	}



}
