function scr_Heart_Pick_Use() {
	
	with instance_create_depth(x, y, depth, obj_heart_pick_icon) {
		soul_source = other.id;
		
		image_xscale = 0.5;
		image_yscale = 0.5;
	}


}
