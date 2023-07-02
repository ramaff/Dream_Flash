function scr_Soul_Item_Duration_Progress() {
	// Location: Soul Step Event

	sNoHitTime++;

	if sWindGustTime > 0 {
	    sWindGustTime--;
	}
	//scr_Beam_Step();

	if senergy <= 0 {
		sWeaponOvertimeTick = 1;
	}
	if sWeaponOvertimeTick > 0 {
		sWeaponOvertime++;
	}

	sdefensebuffduration--;
	if sdefensebuffduration > 0 and sdefensebuffamount >= 1 {
	}
	if sdefensebuffduration < 0 {
	    sdefensebuffamount = 0;
	}
	
	scr_Beam_Step();

	sattackfactorbuffduration--;
	if sattackfactorbuffduration > 0 and sattackfactorbuffamount > 1 {
		if sattackfactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_red, c_red, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
		}
	}
	if sattackfactorbuffduration < 0 {
	    sattackfactorbuffamount = 0;
	}

	sregenfactorbuffduration--;
	if sregenfactorbuffduration > 0 and sregenfactorbuffamount > 1 {
		if sregenfactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, c_fuchsia, c_fuchsia, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
		}

	}
	if sregenfactorbuffduration < 0 {
	    sregenfactorbuffamount = 0;
	}

	smovementfactorbuffduration--;
	if smovementfactorbuffduration > 0 and smovementfactorbuffamount > 1 { 	
		var color2 = make_color_rgb(0, 255, 155);
		if smovementfactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, color2, color2, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
			if smovementfactorbuffamount > 5 {
				if smovementfactorbuffduration mod 10 = 0 {
					scr_Disk_Effect(20, 0.75, color2);
				}
			}
		}
	}
	if smovementfactorbuffduration < 0 {
	    smovementfactorbuffamount = 0;
	}

	sfireratefactorbuffduration--;
	if sfireratefactorbuffduration > 0 and sfireratefactorbuffamount > 1 { 
		var color = make_color_rgb(0, 255, 84);	
		if sfireratefactorbuffduration mod 5 = 0 {
			scr_Particle_Burst(obj_State_Trail, spr_Soul_Big_Bit, color, color, 1, 3 + random(3), 60 + random(60), 0, 40, 0.2 + random(0.3), 20 + random(20))
		}
	}
	if sfireratefactorbuffduration < 0 {
	    sfireratefactorbuffamount = 0;
	}



}
