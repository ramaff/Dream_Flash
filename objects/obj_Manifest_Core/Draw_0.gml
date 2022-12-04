/// @description Insert description here
// You can write your code in this editor
//texture_set_interpolation(0);

var palindex = champ;

if champ = 8 {
	palindex = 3;
} 

pal_swap_set(spr_Manifest_Core_Palette,palindex,false);
    
draw_self();

pal_swap_reset();

//texture_set_interpolation(1);