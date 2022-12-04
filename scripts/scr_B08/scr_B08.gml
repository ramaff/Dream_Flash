function scr_B08() {
	// Location Soul Step Event

	if global.B[8] > 0 and global.soulNoShoot >= 24 {
	    //shealthregenfactor += 1 + (1 * global.B[8]);
		
		if (global.soulNoShoot + 24) mod 30 = 0 {
			if obj_Soul_Parent.shealth < obj_Soul_Parent.smaxhealth {
				scr_Heal_Soul(global.B[8]);
			} else {
				scr_Refresh_Soul(global.B[8] * 5);
			}
		}
		/*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(255,50,255),make_color_rgb(255,150,255));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
				
		if partcreate = 1 {
			scr_Soul_Part_Summon();
		} */
	}



}
