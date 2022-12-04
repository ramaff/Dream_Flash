function scr_D14() {
	// Location Soul Move Around Step

	if global.D[14] > 0 {
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= (90) {
	            var dmg = (1 + global.D[14]) * other.smovemultiplier / 20;
	            bosshealth -= dmg;
				
				if scr_Chance(10) {
					scr_Damage_Indicator(0, dmg * 10, 1);
				}
	        }
	    }
	    suckpow = 0.65 + (0.75 * global.D[14]);
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
	
		/*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(50,255,50),make_color_rgb(150,255,150));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
				
		if partcreate = 1 {
			scr_Soul_Part_Summon_Burst(3 + random(6));
		}*/
	}



}
