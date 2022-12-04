/// @description Insert description here
// You can write your code in this editor

//texture_set_interpolation(0);

var palindex = champ;

if champ = 8 {
	palindex = 3;
} 

pal_swap_set(spr_Spirit_of_Mischief_Palette,palindex,false);

draw_sprite_ext(spr_Mischief_Aura,0,x,y-30,bossSizeX,bossSizeY,aAngle,c_white,1);

draw_self();

pal_swap_reset();

//texture_set_interpolation(1);