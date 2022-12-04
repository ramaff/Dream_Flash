function scr_B05() {
	// Location Soul Hit by Bullet Event

	if global.B[5] > 0 {
	    var rubber = 0
	    var chance = 9 + irandom(1 + 2 * global.B[5]);
	    if (chance >= 10) {
	        var rubber = 1;
	    }

	    if rubber = 1 {
			repeat(8) {
				scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, make_color_rgb(255,50,255), make_color_rgb(255,150,255), 1, 16 + random(8), random(360), 0, 0, 0.5, 25 + random(5))
			}
			/*part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
			part_type_color_mix(ptype, make_color_rgb(255,50,255),make_color_rgb(255,150,255));
			part_type_alpha1(ptype, 1)
			part_type_life(ptype, 10, 20);
				
			repeat(8) {
				scr_Soul_Part_Summon_Burst(2.5 + random(5));
			} */
	        scr_Rubber_Soul_Rebound_Shot();
	        damageamount = damageamount / 2;
	    }

	}



}
