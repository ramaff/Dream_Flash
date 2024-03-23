var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
        shot_stats.Shot_Speed += 2.5;
        speed += 2.5;
        shot_stats.Shot_Fire += 3;
        if shot_stats.Shot_Fire_Ticks <= 3 {
            shot_stats.Shot_Fire_Time = 60;
            shot_stats.Shot_Fire_Ticks = 2;
        }
        if (sprite_get_width(sprite_index) <= 100) and object_index != obj_Beam_Shot {
            sprite_index = spr_Fire_Essence_Shot;
			if shot_stats.Shot_Size < 1 {
				shot_stats.Shot_Size += 0.05;
				image_xscale += 0.05;
				image_yscale += 0.05;
			}
            image_angle = direction;
        }
    }
	scr_Particle_Burst(obj_Weapon_Trail, spr_Soul_Big_Bit, c_yellow, c_red, 8, 12, 0, 360, 20, other.image_xscale + 0.1, 15, false)
	scr_Soul_Stretch("Horizontal", 0.2);
}

