function scr_D12_Gust() {
	// Location Soul Item Step Before Event

	if global.D[12] > 0 and sWindGustTime > 0 {
	    suckpow = (20 + (30 * global.D[12])) * (1 + global.teleportboost);
	    scr_Enemy_Bullet_Suck(-suckpow);
		
		
	
		/*
		part_type_sprite(ptype,spr_Soul_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(150,255,150),make_color_rgb(50,255,50));
		part_type_alpha1(ptype, 1)
				
		repeat(2) {
			scr_Soul_Part_Summon_Burst(5 + random(10));
		}
		*/
	}
}
