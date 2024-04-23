var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
        shot_stats.Shot_Impact_Power += 4;
        shot_stats.Shot_Impact_Size += 40;
		if shot_stats.Shot_Impact_Size <= 80 {
			shot_stats.Shot_Impact_Size = 80;
		}
		if shot_stats.Shot_Impact_Power <= 8 {
			shot_stats.Shot_Impact_Power = 8;	
		}
        shotimaginary = 0;
        shotsharpandsolid = 0;
        shotmagical = 0;
        shotexplosive = 0;
        shotenergy = 0;
        shotexplosive += 1;
		shot_stats.Shot_Impact_Power_Level = shot_stats.Shot_Impact_Power;
        
        if shot_stats.Shot_Impact_Type = 0 {
            shot_stats.Shot_Impact_Type = 1;
            shot_stats.Shot_Impact_Size = 80;
            shot_stats.Shot_Impact_Power_Level = 8;
            shot_stats.Shot_Impact_Power = 8;
        }
    }
	
	scr_Particle_Burst(obj_Gravity_Particle, spr_Soul_Big_Bit, c_yellow, c_red, 8, 12, 0, 360, 20, other.image_xscale + 0.1, 15, false)
	scr_Soul_Stretch("Horizontal", 0.2);
}

