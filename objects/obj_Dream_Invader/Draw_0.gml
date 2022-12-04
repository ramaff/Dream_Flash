/// @description Insert description here
// You can write your code in this editor

shadowSize = 0.3;
shadowYOffset = bossHeight;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+bossHeight,shadowSize * (1.2 - (bossHeight / 1200)),shadowSize * (1.2 - (bossHeight / 1200)),0,c_white,(0.5 - (bossHeight/2000)));

var palindex = champ;

pal_swap_set(spr_Dream_Invader_Palette,palindex,false);
    draw_self();
pal_swap_reset();


if bossbeamattackactive = 1 {
    for(i = 0; i < 9; i++) {
        scr_Boss_Beam_Draw(bossbeamangle[i],bossbeamlength[i]);
    }
    bossbeamattackactive = 0;
}

