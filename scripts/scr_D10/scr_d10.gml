function scr_D10() {
	// Location: Shot Creation Script
	if global.D[10] >= 1 {
	    current_weapon_stats.Shot_Count = current_weapon_stats.Shot_Count * 2;
		current_weapon_stats.Shot_Count += global.D[10] - 1;
	}

}
