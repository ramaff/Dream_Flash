function scr_A07() {
	// Location Shot hit boss
	
	// Damage applied in damage calc script
	

	if global.A[7] > 0 {
				
		global.A07memory = scr_Sqrt_Add(1 + global.A07memory, (shot_stats.Essence / 100) * global.A[7]) - 1;
		
		/*if (global.A07memory > (0.3 * global.A[7])) {
			global.A07memory = 0.3 * global.A[7];
		} */
	}

}
