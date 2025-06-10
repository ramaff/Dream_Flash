function scr_D14() {
	// Location Soul Move Around Step

		var _dmg = (1 + global.D[14]) * sqrt((soulCurrentHorizontalSpeed * soulCurrentHorizontalSpeed) + (soulCurrentVerticalSpeed * soulCurrentVerticalSpeed)) / 20
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= (90) {
	            bosshealth -= _dmg;
				
				if scr_Chance(10) {
					scr_setup_dmg_indicator(x,y, _dmg * 10, c_white);
				}
	        }
	    }
	    var suckpow = 0.65 + (0.75 * global.D[14]);
	    scr_Enemy_Bullet_Suck(-suckpow);
		
		global.D14Trigger++;
		var color = make_color_rgb(0, 255, 84);
		
		if global.D14Trigger mod 5 = 0 {
			scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, color, color, 1, 8, 0, 360, 20, 0.4, 30, false)
		}
		if global.D14Trigger >= 20 {
			scr_Disk_Effect(15, 0.75, color);
			global.D14Trigger = 0;
		}
	



}
