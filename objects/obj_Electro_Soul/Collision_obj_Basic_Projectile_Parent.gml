var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
        shotchain += 1
        shotchaintype = 1;
        shotchainpower = 10;
		if shotchainrange <= 150 {
			shotchainrange = 150;
		}
        shotchainspeed = 12;
		
		shot_stats.Shot_Speed += 2.5;
        speed += 2.5;
		
		if (sprite_get_width(sprite_index) <= 69)  and object_index != obj_Beam_Shot {
            sprite_index = spr_Lightning_Bolt_Shot;
            image_angle = direction;
        }
		if shot_stats.Shot_Size < 1 {
				shot_stats.Shot_Size += 0.05;
				image_xscale += 0.05;
				image_yscale += 0.05;
			}
        
        shotimaginary = 0;
        shotsharpandsolid = 0;
        shotmagical = 0;
        shotexplosive = 0;
        shotenergy = 0;
        shotenergy += 1;
    }
	
	scr_Particle_Burst(obj_Pointy_Part, spr_Lightning_Part, c_yellow, c_yellow, 8, 12, 0, 360, 20, other.image_xscale + 0.1, 15, false)
	scr_Soul_Stretch("Horizontal", 0.2);
	
}

