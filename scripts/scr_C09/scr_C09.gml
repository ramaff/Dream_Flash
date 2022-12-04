function scr_C09() {
	// Location Soul Hit by Bullet Event

	if global.C[9] > 0 {
	    obj_Soul_Parent.senergy += 40 * global.C[9];
		/*
		part_type_sprite(ptype,spr_Soul_Bit,0,0,0);
		part_type_color1(ptype, make_color_rgb(50,50,255));
		part_type_alpha1(ptype, 1)
		*/		
		repeat(4) {
			/*
			scr_Soul_Part_Summon_Burst(2.5 + random(5));
		
			part_type_color1(ptype, make_color_rgb(255,255,50));
		
			scr_Soul_Part_Summon_Burst(2.5 + random(5));
			*/
		}
	}



}
