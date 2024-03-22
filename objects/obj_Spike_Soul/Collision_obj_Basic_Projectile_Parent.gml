var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    //ds_list_add(projectile_hits, other.id);
    with(other) {
        shotpierce += 1;
        shot_stats.Shot_Power += 4;
        shotPowerLevel += 4;
        shot_stats.Shot_Speed += 1.5;
        speed += 1.5;
    }
	scr_Particle_Burst(obj_Pointy_Part, spr_Pointy_Part, c_white, c_white, 4, 12, 0, 360, 20, other.image_xscale + 0.1, 15, false);
	scr_Soul_Stretch("Horizontal", 0.2);
}

