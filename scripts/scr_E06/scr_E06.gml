function scr_E06() {
	// Location: Shot Creation Script

	if global.E[6] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		if shot_stats.Shot_Homing_Type = 0 {
	        shot_stats.Shot_Homing_Type = 1;
		}
	    if shot_stats.Shot_Homing_Range < 50 + 100 * global.E[6] {
	        shot_stats.Shot_Homing_Range = 50 + 100 * global.E[6];
	    } else {
	        shot_stats.Shot_Homing_Range += 100 * global.E[6];
	    }
		
		if shot_stats.Shot_Homing_Speed < 1 + (1.5 * global.E[6]) {
			shot_stats.Shot_Homing_Speed = 1 + (1.5 * global.E[6]);	
		} else {
			shot_stats.Shot_Homing_Speed += 1.5 * global.E[6]	
		}
	    //}
	}



}
