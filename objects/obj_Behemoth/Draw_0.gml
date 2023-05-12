/// @description Insert description here
// You can write your code in this editor
shadowSize = 0.6;
shadowYOffset = 16;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 2500)),shadowSize * (1.2 - (jumpHeight / 2500)),0,c_white,(0.8 - (jumpHeight/2500)));

//texture_set_interpolation(0);

var palindex = champ;

pal_swap_set(spr_Behemoth_Palette,palindex,false);
    
draw_self();

pal_swap_reset();

/*
if bossbeamattackactive = 1 {
    for(i = 0; i < 9; i++) {
        scr_Boss_Beam_Draw(bossbeamangle[i],bossbeamlength[i]);
    }
    bossbeamattackactive = 0;
}
*/
