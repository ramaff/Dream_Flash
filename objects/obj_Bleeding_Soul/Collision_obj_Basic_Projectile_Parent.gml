var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
		var chance = irandom(4);
		if chance = 1 {
	        shot_stats.Shot_Bleed += 2;
	        shot_stats.Shot_Bleed_Ticks += 3;
	        if shot_stats.Shot_Bleed_Time <= 120 {
	            shot_stats.Shot_Bleed_Time = 120;
	        }
        
	        shotimaginary = 0;
	        shotsharpandsolid = 0;
	        shotmagical = 0;
	        shotexplosive = 0;
	        shotenergy = 0;
	        shotsharpandsolid += 1;
		}
    }
	scr_Particle_Burst(obj_Gravity_Particle, spr_Soul_Big_Bit, make_color_rgb(150,0,0), c_red, 8, 12, 0, 360, 20, other.image_xscale + 0.1, 15, false)
	scr_Soul_Stretch("Horizontal", 0.2);
}

