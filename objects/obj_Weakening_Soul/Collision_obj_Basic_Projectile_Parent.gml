var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
		var chance = irandom(4);
		if chance = 1 {
	        shotweaken += 1;
	        if shotweakentime <= 120 {
	            shotweakentime = 120;
	        }
		}
    }
}

