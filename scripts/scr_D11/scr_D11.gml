function scr_D11(_cw) {
	// Soul Shot Creation
	
	if global.D[11] > 0 {
		_cw.Shot_Friction += (3 / 30) * global.D[11];
		if _cw.Shot_Min_Speed = 1 {
			_cw.Shot_Min_Speed = _cw.Shot_Speed;
		}
		_cw.Shot_Speed += 3 * global.D[11];
	}

	/*
	if global.D[11] > 0 {
		if global.soulNoShoot < 15 {
		    energyregenfactor -= 0.1 * global.D[11];
		    sdelayregenfactor += 0.25 * global.D[11];
		
			part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
			part_type_color_mix(ptype, make_color_rgb(50,255,143),make_color_rgb(127,255,185));
			part_type_alpha1(ptype, 1)
			var partcreate = irandom(4);
	
			if partcreate = 1 {
				scr_Soul_Part_Summon();
			}
		} else {
			//energyregenfactor = energyregenfactor * ((10 + global.D[11]) / 10);	
		}
	}
	*/


}
