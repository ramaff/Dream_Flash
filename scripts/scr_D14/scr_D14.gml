function scr_D14() {
	// Location Soul Move Around Step

	var _move_speed = sqrt((soulCurrentHorizontalSpeed * soulCurrentHorizontalSpeed) + (soulCurrentVerticalSpeed * soulCurrentVerticalSpeed))
	
	if _move_speed > 0 {
		
		var _move_direction = point_direction(0,0, soulCurrentHorizontalSpeed, soulCurrentVerticalSpeed);

		var _dmg = (1 + global.D[14]) * _move_speed / 20
		var _range = 10 * sqrt(20 * _dmg)
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= (90) {
	            bosshealth -= _dmg;
				
				if global.roomtime mod 10 = 0 {
					scr_setup_dmg_indicator(x,y, _dmg * 10, c_white);
				}
	        }
	    }
	    var suckpow = _move_speed / 5 * (0.5 + (0.75 * global.D[14]));
	    scr_Enemy_Bullet_Suck(-suckpow);
		
		global.D14Trigger++;
		var color = make_color_rgb(0, 255, 84);
		
		if global.D14Trigger mod 5 = 0 {
			scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, color, color, 1, 8 + _move_speed, _move_direction - 180, 180, 20, 0.3 + random(0.15), 15 + random(15), false)
		}
		if global.D14Trigger >= 20 {
			scr_Disk_Effect(15, 0.75, color);
			global.D14Trigger = 0;
		}
	
	}


}
