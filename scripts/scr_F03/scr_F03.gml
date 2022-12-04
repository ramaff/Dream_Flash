function scr_F03(full_power = false) {
	// Location State Form

	if global.F[3] > 0 {
		var potency = 1;
		if !full_power {
			potency = 0.075;
		}
	    with(obj_Boss_Parent) {
	        //if distance_to_object(other) <= (1000) {
	            var dmg = (1 + global.F[3]) * 2 * potency * ((40 + global.soulstate + global.soulstateTemp) / 40);
	            bosshealth -= dmg;
				
				if scr_Chance(10) {
					scr_Damage_Indicator(0, dmg * 10, 1);
				}
	        //}
	    }
	    var suckpow = potency * (10 + (10 * global.F[3]));
	    scr_Enemy_Bullet_Suck(-suckpow);
	
		/* part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(255,50,0),make_color_rgb(255,100,50));
		part_type_alpha1(ptype, 1)
			scr_Soul_Part_Summon_Burst(3 + random(6));
			*/
		
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
