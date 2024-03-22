var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
		var chance = irandom(4);
		if chance = 1 {
	        shotpoison += 2;
	        shotpoisonticks += 4;
	        if shotpoisontime <= 120 {
	            shotpoisontime = 120;
	        }
	        if (sprite_get_width(sprite_index) <= 69) and object_index != obj_Beam_Shot {
	            sprite_index = spr_Poison_Essence_Shot;
	            image_angle = direction;
	        }
			if shot_stats.Shot_Size < 1 {
				shot_stats.Shot_Size += 0.05;
				image_xscale += 0.05;
				image_yscale += 0.05;
			}
		}
    }
	scr_Particle_Burst(obj_Gravity_Particle, spr_Soul_Big_Bit, make_color_rgb(0,150,0), c_green, 8, 12, 0, 360, 20, other.image_xscale + 0.1, 15, false)
	scr_Soul_Stretch("Horizontal", 0.2);
}

