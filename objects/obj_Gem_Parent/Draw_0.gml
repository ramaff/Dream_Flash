draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);

senergy = 100;

scr_Draw_Standalone_Beam();

if gemDrawBeam > 0 {
    //scr_Draw_Beam_Setup(spr_Yellow_Beam_Shot);
    scr_Draw_Beam_Setup_No_Mouse(spr_Yellow_Gem_Beam_Shot);
}

if gemDrawStandaloneBeam > 0 {
    //scr_Draw_Beam_Setup(spr_Yellow_Beam_Standalone);
    scr_Draw_Beam_Setup_No_Mouse(spr_Yellow_Gem_Beam_Standalone);
//    sWeaponUseFrame = 1;
}

sWeaponUseFrame = 0;

ds_list_clear(global.gembeam_hits);

gemDrawBeam--;

if gemDrawBeam <= 0 {
    gemDrawBeam = 0;
}

gemDrawStandaloneBeam--;

if gemDrawStandaloneBeam <= 0 {
    gemDrawStandaloneBeam = 0;
}

