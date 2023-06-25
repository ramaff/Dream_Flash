function scr_C10() {
	// Location Soul Step Event

	if global.C[10] > 0 and (shealth < (smaxhealth / 2)) {
		var regenfac = (1 + ((smaxhealth - shealth) / smaxhealth) * global.C[10])
	    energyregenfactor += regenfac
		sdelayregenfactor += regenfac / 3
		
		if scr_Chance(10) {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_blue, c_purple, 1, 3 + random(3), 60 + random(60), 0, 0, 0.2 + random(0.3), 20 + random(20))	
		}
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
	    sdelayregenfactor += 0.133 * global.C[10];
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
