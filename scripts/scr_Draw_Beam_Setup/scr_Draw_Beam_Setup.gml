function scr_Draw_Beam_Setup() {
	/*
	weapStop = 0;

	weapSprite = argument[0];

	scr_C08();

	sBeamAngle = point_direction(x,y,mouse_x,mouse_y);

	sBeamWeapon = 0;

	bweaponCost = 0;
	bweaponDelay = 0;

	if global.currentweapon = 14 and weapSprite = "Weapon" {
	    sBeamWeapon = 1;
	    sBeamSprite = spr_Essence_Beam_Shot;
	    sBeamSpriteStart = spr_Essence_Beam_Start;
	    sBeamSpriteTip = spr_Essence_Beam_Tip;
	    bweaponCost = ((5 - senergyconservation) / senergyconservationfactor / ((10 + global.Weap[020]) / 10));
	}
	if global.currentweapon = 12 and weapSprite = "Weapon" {
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Laser_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Laser_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Laser_Tip;
	    bweaponCost = ((15 - senergyconservation) / senergyconservationfactor / ((10 + global.Weap[020]) / 10));
	}
	if global.currentweapon = 410 and weapSprite = "Weapon" {
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Energy_Crystal_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Energy_Crystal_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Energy_Crystal_Tip;
	    bweaponCost = ((9 - senergyconservation) / senergyconservationfactor / ((10 + global.Weap[020]) / 10));
	}

	if weapSprite = spr_Yellow_Gem_Beam_Shot {
	    sBeamWeapon = 1;
	    sBeamSprite = spr_Yellow_Gem_Beam_Shot;
	    sBeamSpriteStart = spr_Yellow_Gem_Beam_Start;
	    sBeamSpriteTip = spr_Yellow_Gem_Beam_Tip;
	    bweaponCost = ((5 - senergyconservation) / senergyconservationfactor / ((10 + global.Weap[020]) / 10));
	}

	if weapSprite = spr_Yellow_Gem_Beam_Standalone {
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Yellow_Gem_Beam_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Yellow_Gem_Beam_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Yellow_Gem_Beam_Tip;
	    bweaponCost = ((5 - senergyconservation) / senergyconservationfactor / ((10 + global.Weap[020]) / 10));
	}

	if mouse_check_button_pressed(mb_left) {
	    sBeamFrame = 0;
	}

	if (senergy > weapStop + bweaponCost) { 
	if (mouse_check_button(mb_left) || sBeamAlpha > 0) and sBeamWeapon = 1 {
	    sBeamAngle = point_direction(x,y,mouse_x,mouse_y);
		if mouse_check_button(mb_left) {
			sBeamAlpha += 0.125;
		}
	    sBeamFrame += 1;
	    for(i = 0; i < Shot_Count; i++){
	        sBeamAngle = bangle[i];
	        scr_Draw_Beam(sBeamAngle);
	    }
	}  
	}

	if sWeaponUseFrame = 1 { 
	if mouse_check_button(mb_left) and sBeamWeapon = 2 {
	    bArrBeamAlpha[sBeamNum] = 1.2;
	    bArrBeamFrame[sBeamNum] = 0;
	    bArrBeamLife[sBeamNum] = 10;
	    for(j = 0; j < bShotCount[sBeamNum]; j++){
	        sBeamAngle = bArrangle[sBeamNum,j];
	        sBeamLength = bArrlength[sBeamNum,j];
	        scr_Draw_Beam(sBeamAngle);
	    }
	    sBeamNum++;
	}  
	}
	*/


}
