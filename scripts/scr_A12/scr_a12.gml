function scr_A12(_cw) {
	// Location Shot Creation

	if global.A[12] > 0 {
		/*
		part_type_sprite(ptype,spr_Soul_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(255,50,50),make_color_rgb(255,150,150));
		part_type_alpha1(ptype, 1)
		part_type_life(ptype,10,20);
				
		repeat(8) {
			scr_Soul_Part_Summon_Burst(5 + random(10));
		}
		*/
		scr_Disk_Effect(10, 0.75, c_red);
		
		var _dmg = ((1 + global.A[12])/2) * _cw.Shot_Power / 4;
	    with(obj_Boss_Parent) {
	        if distance_to_object(other) <= (150 + 10 * global.A[12]) {
	            bosshealth -= _dmg;
            
				scr_setup_dmg_indicator(x,y, _dmg, c_white)
	        }
	    }
	}



}
