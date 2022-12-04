/// @description Insert description here
// You can write your code in this editor

//texture_set_interpolation(0);

var shadowSize = 0.2;
var shadowYOffset = bossHeight;

//draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset,shadowSize * (1.2 - (bossHeight / 1200)),shadowSize * (1.2 - (bossHeight / 1200)),0,c_white,(0.5 - (bossHeight/2000)));

var palindex = champ + 1;

if champ = 8 {
	palindex = 4;
} 

//pal_swap_set(spr_Spooky_Spirit_Palette,palindex,false);

draw_self();


//pal_swap_reset();

//texture_set_interpolation(1);