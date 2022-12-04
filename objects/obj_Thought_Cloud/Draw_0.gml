/// @description Insert description here
// You can write your code in this editor

//texture_set_interpolation(0);

shadowSize = 0.275;
shadowYOffset = 0;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+bossHeight,shadowSize * (1.2 - (bossHeight / 1200)),shadowSize * (1.2 - (bossHeight / 1200)),0,c_white,(0.5 - (bossHeight/2000)));

var palindex = champ + 1;
if champ = 3 {
	palindex = 0;	
}
if champ = 8 {
	palindex = 4;	
}

pal_swap_set(spr_Thought_Cloud_Palette,palindex,false);
    draw_self();
pal_swap_reset();

/*
if champ != 8 {
pal_swap_set(spr_Thought_Cloud_Palette,palindex,false);
    draw_self();
pal_swap_reset();
} else {
	draw_self();
}
*/

//texture_set_interpolation(1);