function scr_E14() {
	// Location Soul Teleport

	if global.E[14] > 0 {
	    with instance_create(x,y,obj_Dream_Glitch) {
			scr_Soul_Utility_Setup();
			size = other.size;
			image_xscale = size;
			image_yscale = abs(size);
		}
	}



}
