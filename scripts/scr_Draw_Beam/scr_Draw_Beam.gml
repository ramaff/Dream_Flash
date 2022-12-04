function scr_Draw_Beam() {
	/*
	var angle = argument[0];

	xx = x + lengthdir_x(16 + 76 * sBeamAlpha / 2,angle);
	yy = y + lengthdir_y(16 + 76 * sBeamAlpha / 2,angle);

	xs = x + lengthdir_x(16 + 16 * sBeamAlpha / 2,angle);
	ys = y + lengthdir_y(16 + 16 * sBeamAlpha / 2,angle);

	if sBeamWeapon = 1 {
	    var length = 0;
    
	    var allBeam = 1;
    
	    with(obj_Gem_Parent) {
	        var hit_again = ds_list_find_index(global.gembeam_hits, id);
	        if hit_again = -1 {
	            allBeam = 0;
	        }
	    }
    
	var count = 0;
	while(!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,false,true) and length < 2400 and (!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_Gem_Parent,false,true) || allBeam = 1 || count <= 50)) {
	    length += 128;
		count++;
	}
	while(collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,false,true) and length < 2400 and (!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_Gem_Parent,false,true) || allBeam = 1 || count <= 50)) {
	    length -= 64;
		count++;
	}
	while(!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,false,true) and length < 2400 and (!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_Gem_Parent,false,true) || allBeam = 1 || count <= 50)) {
	    length += 16;
		count++;
	}
	blength[j] = length;

	if sBeamSprite = spr_Red_Gem_Beam_Shot {
	pal_swap_set(spr_Gem_Beam_Palette,0,false);
	}
	if sBeamSprite = spr_Yellow_Gem_Beam_Shot {
	pal_swap_set(spr_Gem_Beam_Palette,1,false);
	sBeamSprite = spr_Red_Gem_Beam_Shot
	sBeamSpriteStart = spr_Red_Gem_Beam_Start;
	sBeamSpriteTip = spr_Red_Gem_Beam_Tip;
	}
	if sBeamSprite = spr_Cyan_Gem_Beam_Shot {
	pal_swap_set(spr_Gem_Beam_Palette,2,false);
	sBeamSprite = spr_Red_Gem_Beam_Shot
	sBeamSpriteStart = spr_Red_Gem_Beam_Start;
	sBeamSpriteTip = spr_Red_Gem_Beam_Tip;
	}
	if sBeamSprite = spr_Lime_Gem_Beam_Shot {
	pal_swap_set(spr_Gem_Beam_Palette,3,false);
	sBeamSprite = spr_Red_Gem_Beam_Shot
	sBeamSpriteStart = spr_Red_Gem_Beam_Start;
	sBeamSpriteTip = spr_Red_Gem_Beam_Tip;
	}
	if sBeamSprite = spr_Pink_Gem_Beam_Shot {
	pal_swap_set(spr_Gem_Beam_Palette,4,false);
	sBeamSprite = spr_Red_Gem_Beam_Shot
	sBeamSpriteStart = spr_Red_Gem_Beam_Start;
	sBeamSpriteTip = spr_Red_Gem_Beam_Tip;
	}
	if sBeamSprite = spr_Blue_Gem_Beam_Shot {
	pal_swap_set(spr_Gem_Beam_Palette,5,false);
	sBeamSprite = spr_Red_Gem_Beam_Shot
	sBeamSpriteStart = spr_Red_Gem_Beam_Start;
	sBeamSpriteTip = spr_Red_Gem_Beam_Tip;
	}

	if sBeamSprite = spr_Red_Gem_Beam_Shot {
		texture_set_interpolation(0);
		xx = x + lengthdir_x(16 + 48 * sBeamAlpha / 2,angle);
		yy = y + lengthdir_y(16 + 48 * sBeamAlpha / 2,angle);
	}

	draw_sprite_ext(sBeamSpriteStart,sBeamFrame,xs,ys,sBeamAlpha / 2,sBeamAlpha / 2,angle,c_white,1);
	draw_sprite_ext(sBeamSprite,sBeamFrame,xx,yy,length,sBeamAlpha / 2,angle,c_white,1);
	draw_sprite_ext(sBeamSpriteTip,sBeamFrame,xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),sBeamAlpha / 2,sBeamAlpha / 2,angle,c_white,1);

	if sBeamSprite = spr_Red_Gem_Beam_Shot {
		pal_swap_reset();
		texture_set_interpolation(1);
	}
	}

	if sBeamWeapon = 2 {
		xx = x + lengthdir_x(40,angle);
		yy = y + lengthdir_y(40,angle);

		xs = x + lengthdir_x(25,angle);
		ys = y + lengthdir_y(25,angle);
	
	    bArrxx[sBeamNum,j] = xx;
	    bArryy[sBeamNum,j] = yy;
	    bArrxs[sBeamNum,j] = xs;
	    bArrys[sBeamNum,j] = ys;
	    //bArrangle[sBeamNum] = bangle[sBeamNum];
	    //bArrlength[sBeamNum] = 0;
    
	    length = 0;
    
	    var allBeam = 1;
    
	    with(obj_Gem_Parent) {
	        var hit_again = ds_list_find_index(global.gembeam_hits, id);
	        if hit_again = -1 {
	            allBeam = 0;
	        }
	    }
	
	
	    var count = 0;
	    while(!collision_point(bArrxx[sBeamNum,j] + lengthdir_x(length,angle),bArryy[sBeamNum,j] + lengthdir_y(length,angle),obj_The_Border,true,true) and length < 2400 and (!collision_point(bArrxx[sBeamNum,j] + lengthdir_x(length,angle),bArryy[sBeamNum,j] + lengthdir_y(length,angle),obj_Gem_Parent,true,true) || allBeam = 1 || count <= 50)) {
	        length += 128;
			count++;
	    }
		var count = 0
		while(collision_point(bArrxx[sBeamNum,j] + lengthdir_x(length,angle),bArryy[sBeamNum,j] + lengthdir_y(length,angle),obj_The_Border,true,true) and length < 2400 and (!collision_point(bArrxx[sBeamNum,j] + lengthdir_x(length,angle),bArryy[sBeamNum,j] + lengthdir_y(length,angle),obj_Gem_Parent,true,true) || allBeam = 1 || count <= 50)) {
	        length -= 64;
			count++;
	    }
		while(!collision_point(bArrxx[sBeamNum,j] + lengthdir_x(length,angle),bArryy[sBeamNum,j] + lengthdir_y(length,angle),obj_The_Border,true,true) and length < 2400 and (!collision_point(bArrxx[sBeamNum,j] + lengthdir_x(length,angle),bArryy[sBeamNum,j] + lengthdir_y(length,angle),obj_Gem_Parent,true,true) || allBeam = 1 || count <= 50)) {
	        length += 16;
			count++;
	    }
    
	    //length = 1000;
    
	    bArrlength[sBeamNum,j] = length;
	    //bArrangle[sBeamNum,j] = angle;
	
		var alp = (bArrBeamAlpha[sBeamNum] / 2);
		var sapx = lengthdir_x(30 - 60 * alp, angle);
		var sapy = lengthdir_y(30 - 60 * alp, angle);
		sapx = 0;
		sapy = 0;

	    draw_sprite_ext(bArrBeamSpriteStart[sBeamNum],bArrBeamFrame[sBeamNum],xs,ys,alp,alp,angle,c_white,1);
	    draw_sprite_ext(bArrBeamSprite[sBeamNum],bArrBeamFrame[sBeamNum],xx,yy,length,alp,angle,c_white,1);
	    draw_sprite_ext(bArrBeamSpriteTip[sBeamNum],bArrBeamFrame[sBeamNum],xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),alp,alp,angle,c_white,1);

	}


	/*
	for(bn = 0; bn <= sBeamNum; bn++) {
	    if bArrBeamLife[bn] > 0 {
	        draw_sprite_ext(bArrBeamSprite[bn],bArrBeamFrame[bn],bArrxx[bn],bArryy[bn],bArrlength[bn],1,bArrangle[bn],c_white,bArrBeamAlpha[bn]);
	        draw_sprite_ext(bArrBeamSpriteTip[bn],bArrBeamFrame[bn],bArrxx[bn]+lengthdir_x(bArrlength[bn],bArrangle[bn]),bArryy[bn]+lengthdir_y(bArrlength[bn],bArrangle[bn]),1,1,bArrangle[bn],c_white,bArrBeamAlpha[bn]);
	    }
	}
*/

/* end scr_Draw_Beam */
}
