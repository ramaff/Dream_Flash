function scr_Gem_Draw() {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);

	bSprite = argument[0];

	senergy = 100;

	if gemDrawStandaloneBeam > 0 {
	    if bSprite = spr_Yellow_Gem_Beam_Shot {
	        bSprite = spr_Yellow_Gem_Beam_Standalone;
	    }
	    if bSprite = spr_Red_Gem_Beam_Shot {
	        bSprite = spr_Red_Gem_Beam_Standalone;
	    }
	}

	sWeaponUseFrame = 0;

	//ds_list_clear(global.gembeam_hits);

	gemDrawBeam--;

	if gemDrawBeam <= 0 {
	    gemDrawBeam = 0;
	}

	gemDrawStandaloneBeam--;

	if gemDrawStandaloneBeam <= 0 {
	    gemDrawStandaloneBeam = 0;
	}



}
