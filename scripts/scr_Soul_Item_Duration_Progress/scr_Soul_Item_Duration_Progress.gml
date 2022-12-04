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
		/*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(149,50,255), make_color_rgb(133,76,255));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
	
		if partcreate = 1 {
			scr_Soul_Part_Summon();
		}
		*/
	}
	if sdefensebuffduration < 0 {
	    sdefensebuffamount = 0;
	}
	
	scr_Beam_Step();

	sattackfactorbuffduration--;
	if sattackfactorbuffduration > 0 and sattackfactorbuffamount > 1 {
		/*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(255,128,166),make_color_rgb(255,51,113));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
	
		if partcreate = 1 {
			scr_Soul_Part_Summon();
		}
		*/
	}
	if sattackfactorbuffduration < 0 {
	    sattackfactorbuffamount = 0;
	}

	sregenfactorbuffduration--;
	if sregenfactorbuffduration > 0 and sregenfactorbuffamount > 1 {
		/*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(243,153,255),make_color_rgb(250,200,255));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
	
		if partcreate = 1 {
			scr_Soul_Part_Summon();
		} */
	}
	if sregenfactorbuffduration < 0 {
	    sregenfactorbuffamount = 0;
	}

	smovementfactorbuffduration--;
	if smovementfactorbuffduration < 0 {
	    smovementfactorbuffamount = 0;
	}

	sfireratefactorbuffduration--;
	if sfireratefactorbuffduration > 0 and sfireratefactorbuffamount > 1 { /*
		part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
		part_type_color_mix(ptype, make_color_rgb(50,255,143),make_color_rgb(127,255,185));
		part_type_alpha1(ptype, 1)
		var partcreate = irandom(4);
	
		if partcreate = 1 {
			scr_Soul_Part_Summon();
		} */
	}
	if sfireratefactorbuffduration < 0 {
	    sfireratefactorbuffamount = 0;
	}



}
