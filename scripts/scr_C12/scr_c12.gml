function scr_C12() {
	// Location Weapon Use List

	/*
	part_type_sprite(ptype,spr_Soul_Bit,0,0,0);
	part_type_color1(ptype, make_color_rgb(255,50,50));
	part_type_alpha1(ptype, 1)
	*/

	if global.C[8] > 0 {
	    if (sWeaponOvertime >= (global.C[8] * 120)) {
	        if global.C[12] > 0 {
	            if senergy < weapStop + weaponCost {
	                senergy += global.C[12] * (weapStop + weaponCost) + 1;
	                shealth -= (weapStop + weaponCost) / 20;
					
					/*
					repeat(1 + floor((weapStop + weaponCost) / 5)) {
						scr_Soul_Part_Summon();
						part_type_color1(ptype, make_color_rgb(150,150,255));
						scr_Soul_Part_Summon();
					}
					*/
	            }
	        }
	    }
	} else {
	    if global.C[12] > 0 {
	        if senergy < weapStop + weaponCost {
	            senergy += global.C[12] * (weapStop + weaponCost) + 1;
	            shealth -= (weapStop + weaponCost) / 20;
				/*
				repeat(1 + floor((weapStop + weaponCost) / 5)) {
						scr_Soul_Part_Summon();
						part_type_color1(ptype, make_color_rgb(150,150,255));
						scr_Soul_Part_Summon();
					}
					*/
	        }
	    }
	}



}
