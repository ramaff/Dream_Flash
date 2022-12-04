function scr_Draw_Beam_Setup_No_Mouse() {
	/*
	weapStop = 0;

	weapSprite = argument[0];

	scr_C08();

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
	    bweaponCost = 0;
	}

	if weapSprite = spr_Yellow_Gem_Beam_Standalone {
	    //sWeaponUseFrame = 1
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Yellow_Gem_Beam_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Yellow_Gem_Beam_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Yellow_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Red_Gem_Beam_Shot {
	    sBeamWeapon = 1;
	    sBeamSprite = spr_Red_Gem_Beam_Shot;
	    sBeamSpriteStart = spr_Red_Gem_Beam_Start;
	    sBeamSpriteTip = spr_Red_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Red_Gem_Beam_Standalone {
	    //sWeaponUseFrame = 1
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Red_Gem_Beam_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Red_Gem_Beam_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Red_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Cyan_Gem_Beam_Shot {
	    sBeamWeapon = 1;
	    sBeamSprite = spr_Cyan_Gem_Beam_Shot;
	    sBeamSpriteStart = spr_Cyan_Gem_Beam_Start;
	    sBeamSpriteTip = spr_Cyan_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Cyan_Gem_Beam_Standalone {
	    //sWeaponUseFrame = 1
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Cyan_Gem_Beam_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Cyan_Gem_Beam_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Cyan_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Lime_Gem_Beam_Shot {
	    sBeamWeapon = 1;
	    sBeamSprite = spr_Lime_Gem_Beam_Shot;
	    sBeamSpriteStart = spr_Lime_Gem_Beam_Start;
	    sBeamSpriteTip = spr_Lime_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Lime_Gem_Beam_Standalone {
	    //sWeaponUseFrame = 1
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Lime_Gem_Beam_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Lime_Gem_Beam_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Lime_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Blue_Gem_Beam_Shot {
	    sBeamWeapon = 1;
	    sBeamSprite = spr_Blue_Gem_Beam_Shot;
	    sBeamSpriteStart = spr_Blue_Gem_Beam_Start;
	    sBeamSpriteTip = spr_Blue_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Blue_Gem_Beam_Standalone {
	    //sWeaponUseFrame = 1
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Blue_Gem_Beam_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Blue_Gem_Beam_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Blue_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Pink_Gem_Beam_Shot {
	    sBeamWeapon = 1;
	    sBeamSprite = spr_Pink_Gem_Beam_Shot;
	    sBeamSpriteStart = spr_Pink_Gem_Beam_Start;
	    sBeamSpriteTip = spr_Pink_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	if weapSprite = spr_Pink_Gem_Beam_Standalone {
	    //sWeaponUseFrame = 1
	    sBeamWeapon = 2;
	    bArrBeamSprite[sBeamNum] = spr_Pink_Gem_Beam_Shot;
	    bArrBeamSpriteStart[sBeamNum] = spr_Pink_Gem_Beam_Start;
	    bArrBeamSpriteTip[sBeamNum] = spr_Pink_Gem_Beam_Tip;
	    bweaponCost = 0;
	}

	//if sBeamWeapon = 2 {
	//    bArrxs[sBeamNum] = x + xs;
	//    bArrys[sBeamNum] = y + ys;
	//}

	sBeamAlpha -= 0.025;
	if sBeamAlpha < 0 {
	    sBeamAlpha = 0;
	}
	if sBeamAlpha > 1.2 {
	    sBeamAlpha = 1.2;
	}

	for(i = 0; i < sBeamNumMax; i++) {
	    bArrBeamAlpha[i] -= 0.025;
	    if bArrBeamAlpha[i] < 0 {
	        bArrBeamAlpha[i] = 0;
	    }
	    if bArrBeamAlpha[i] > 1.2 {
	        bArrBeamAlpha[i] = 1.2;
	    }
	    bArrBeamFrame[i]++;
	}

	if mouse_check_button_pressed(mb_left) {
	    sBeamFrame = 0;
	}

	if (senergy > weapStop + bweaponCost) { 
	if sBeamWeapon = 1 {
	    sBeamAngle = point_direction(x,y,mouse_x,mouse_y);
	    sBeamAlpha += 0.125;
	    sBeamFrame += 1;
	    for(i = 0; i < Shot_Count; i++){
	        sBeamAngle = bangle[i];
	        //draw_sprite_ext(sBeamSpriteStart,0,x+xs,y+ys,1,1,point_direction(x,y,mouse_x,mouse_y),c_white,sBeamAlpha);
	        scr_Draw_Beam(sBeamAngle);
	    }
	}  
	}

	if sWeaponUseFrame = 1 { 
	if sBeamWeapon = 2 {
	    //bArrBeamAngle[sBeamNum] = bangle[sBeamNum];
	    bArrBeamAlpha[sBeamNum] = 1;
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
