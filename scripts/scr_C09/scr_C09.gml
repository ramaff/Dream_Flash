function scr_C09() {
	// Location Soul Hit by Bullet Event

	if global.C[9] > 0 {
		scr_Refresh_Soul(150 * global.C[9])
		repeat(8) {
			scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, c_aqua, c_blue, 1, 16 + random(8), random(360), 0, 0, 0.5, 25 + random(5))
		}
	}



}
