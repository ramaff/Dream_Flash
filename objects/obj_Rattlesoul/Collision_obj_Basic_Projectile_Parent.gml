var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
		if scr_Chance(4) {
	        shot_stats.Shot_Weaken += 2;
	        if shot_stats.Shot_Weaken_Time <= 120 {
	            shot_stats.Shot_Weaken_Time = 120;
	        }
		}
    }
	scr_Disk_Effect(15, other.image_xscale + 0.25, make_color_rgb(88,0,255))
	scr_Soul_Stretch("Horizontal", 0.2);
}

