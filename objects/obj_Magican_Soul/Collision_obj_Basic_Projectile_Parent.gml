var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
        if shot_stats.Shot_Homing_Type = 0 {
            shot_stats.Shot_Homing_Type = 1;
        }
        if shot_stats.Shot_Homing_Range < 150 {
            shot_stats.Shot_Homing_Range += 150;
        } else {
            shot_stats.Shot_Homing_Range += 60;
        }
		shot_stats.Shot_Homing_Speed += 2	
        shot_stats.Shot_Speed += 1.5;
        speed += 1.5;
		
		if (sprite_get_width(sprite_index) <= 69)  and object_index != obj_Beam_Shot {
            sprite_index = spr_Magical_Soul_Shot;
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
        shotmagical += 1;
	}
	
	scr_Disk_Effect(15, other.image_xscale + 0.25, make_color_rgb(254,69,255))
	scr_Soul_Stretch("Horizontal", 0.2);
}

