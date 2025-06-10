function scr_C07() {
	// Location Soul Step Event

	if global.soulNoShoot >= 20 {
	    currentenergyregenfactor += 0.5 * global.C[7];
		
		if scr_Chance(10) {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_aqua, c_blue, 1, 3 + random(3), 60 + random(60), 0, 0, 0.2 + random(0.3), 20 + random(20))	
		}

	}



}
