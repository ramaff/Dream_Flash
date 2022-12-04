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
	scr_Disk_Effect(15, other.image_xscale + 0.25, make_color_rgb(88,0,255))
	scr_Soul_Stretch("Horizontal", 0.2);
}

