function scr_U05() {
	// Location: Shot Creation Script

	if global.U[5] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		if shot_stats.Shot_Chain_Type = 0 {
	        shot_stats.Shot_Chain_Type = 1;
		}
	
		if shot_stats.Shot_Chain_Power < 10 {
			shot_stats.Shot_Chain_Power += 5 * global.U[5];
			if shot_stats.Shot_Chain_Power > 10 {
				shot_stats.Shot_Chain_Power = 10;
			}
		}
	
		if shot_stats.Shot_Chain_Speed < 8 {
	        shot_stats.Shot_Chain_Speed = 4 + 4 * global.U[5];
	    } else {
	        shot_stats.Shot_Chain_Speed += 4 * global.U[5];
	    }
	
		shot_stats.Shot_Chain++;
    
		if shot_stats.Shot_Chain_Range < 150 {
	        shot_stats.Shot_Chain_Range = 100 + 100 * global.U[5];
	    } else {
	        shot_stats.Shot_Chain_Range += 100 * global.U[5];
	    }
	//}
	}



}
