/// @description Insert description here
// You can write your code in this editor
var palindex = champ;

if champ = 8 {
	palindex = 2;
} 

texture_set_interpolation(0);

pal_swap_set(spr_Unrest_Palette,palindex,false);
    
draw_self();

texture_set_interpolation(1);

pal_swap_reset();
