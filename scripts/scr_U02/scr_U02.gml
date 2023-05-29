function scr_U02() {
	// Soul Step After Event

	if global.U[2] > 0 and global.roomtime >= 600 {
	    sdelayregenfactor += sdelayregenfactor * (global.U[2] * 0.3);
		energyregenfactor += energyregenfactor * (global.U[2] * 0.45);
		
		var color = make_color_rgb(0, 255, 84);		
		var color2 = make_color_rgb(0, 255, 255);

		
		if global.roomtime mod 8 = 0 {
			scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, color, color2, 1, 8, 0, 360, 20, 0.4, 30, false)
		}
		if global.roomtime mod 150 = 0 {
			scr_Disk_Effect(15, 0.75, color);			
			scr_Disk_Effect(15, 1, color2);
		}
		if global.roomtime mod 150 < 20 {
			var suckpow = 2 + (3 * global.U[02]);
			scr_Enemy_Bullet_Suck(-suckpow);
		}
	}


}
