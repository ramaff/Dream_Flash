function scr_D10_Shot_Mod() {
	// Location: Extra Shot Stats

	if global.D[10] >= 1 {
	    /*shot_stats.Shot_Power_Max = shot_stats.Shot_Power_Max * (0.6);
		shot_stats.Shot_Power = shot_stats.Shot_Power_Max;
		shot_stats.Shot_Power_Level = shot_stats.Shot_Power_Level * (0.6);
		
		shot_stats.Shot_Size = shot_stats.Shot_Size * 0.75;
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size; */
		current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * 0.6;
		current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * 0.85;
	}



}
