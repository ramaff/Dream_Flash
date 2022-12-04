function scr_C10() {
	// Location Soul Step Event

	if global.C[10] > 0 and (shealth < (smaxhealth / 2)) {
	    energyregenfactor += (1 + ((smaxhealth - shealth) / smaxhealth) * global.C[10]);
		/*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(50,50,255),make_color_rgb(150,150,255));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
				
		if partcreate = 1 {
			scr_Soul_Part_Summon();
		}
		*/
	}
	if global.C[10] > 0 and (global.totalhearts = 1) {
	    energyregenfactor += 0.4 * global.C[10];
		/*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(50,50,255),make_color_rgb(150,150,255));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
				
		if partcreate = 1 {
			scr_Soul_Part_Summon();
		}
		*/
	}



}
