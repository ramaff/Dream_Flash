function scr_F03(full_power = false) {
	// Location State Form

	if global.F[3] > 0 {
		var potency = 1;
		if !full_power {
			potency = 0.075;
		}
	    with(obj_Boss_Parent) {
	        //if distance_to_object(other) <= (1000) {
	            var _dmg = (1 + global.F[3]) * 2 * potency * ((40 + global.soulstate + global.soulstateTemp) / 40);
	            bosshealth -= _dmg;
				
				if scr_Chance(10) {
					scr_setup_dmg_indicator(x,y, _dmg * 10, c_white);
				}
	        //}
	    }
	    var suckpow = potency * (10 + (10 * global.F[3]));
	    scr_Enemy_Bullet_Suck(-suckpow);
		
		if full_power {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_yellow, c_orange, 1, 16 + random(8), random(360), 0, 0, 0.5, 25 + random(5))
		} else if scr_Chance(5) {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_yellow, c_orange, 1, 14 + random(4), random(360), 0, 0, 0.4, 15 + random(5))
		}
		
		if statepoweruptime mod 10 = 0 and full_power {
			scr_Disk_Effect(20, 0.9, c_orange);
		}
	}



}
