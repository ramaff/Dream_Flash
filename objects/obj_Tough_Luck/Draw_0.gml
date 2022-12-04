/// @description Insert description here
// You can write your code in this editor


shadowSize = 0.275;
shadowYOffset = 16;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 1000)),shadowSize * (1.2 - (jumpHeight / 1500)),0,c_white,(0.5 - (jumpHeight/2000)));

//texture_set_interpolation(0);

var palindex = champ;

if champ = 8 {
	palindex = 4;
} 

pal_swap_set(spr_Jackhamster_Palette,palindex,false);
    
draw_self();


pal_swap_reset();

depth = -100;

if bossbeamattackactive = 1 and bossActiveAttack[1] != 1 {
    for(i = 0; i < 9; i++) {
        scr_Boss_Beam_Draw(bossbeamangle[i],bossbeamlength[i]);
    }
    bossbeamattackactive = 0;
}

depth = 0;
