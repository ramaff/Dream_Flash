function scr_A07() {
	// Location Shot hit boss
	
	// Damage applied in damage calc script
	

	if global.A[7] > 0 {
				
		global.A07memory += 0.06 * global.A[7];
		
		if (global.A07memory > (0.3 * global.A[7])) {
			global.A07memory = 0.3 * global.A[7];
		}
	}

}
