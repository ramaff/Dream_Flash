var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
		var chance = irandom(4);
		if chance = 1 {
	        shot_stats.Shot_Weaken += 1;
	        if shot_stats.Shot_Weaken_Time <= 120 {
	            shot_stats.Shot_Weaken_Time = 120;
	        }
		}
    }
}

