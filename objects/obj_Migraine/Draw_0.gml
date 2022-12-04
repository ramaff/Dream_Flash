/// @description Insert description here
// You can write your code in this editor
shadowSize = 0.275;
shadowYOffset = 0;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+bossHeight,shadowSize * (1.2 - (bossHeight / 1200)),shadowSize * (1.2 - (bossHeight / 1200)),0,c_white,(0.5 - (bossHeight/2000)));

if (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 4) and bossActiveAttackDuration[1] > 30 {
	draw_sprite_ext(sprite_index,image_index,bossSavedX,bossSavedY,image_xscale,image_yscale,image_angle,c_white,0.5);	
}

var palindex = champ;

if champ != 8 {
pal_swap_set(spr_Storm_Cloud_Palette,palindex,false);
    draw_self();
pal_swap_reset();
} else {
	draw_self();
}

if bossbeamattackactive = 1 {
    for(i = 0; i < 9; i++) {
        scr_Boss_Beam_Draw(bossbeamangle[i],bossbeamlength[i]);
    }
    bossbeamattackactive = 0;
}
