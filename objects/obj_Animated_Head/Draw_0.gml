/// @description Insert description here
// You can write your code in this editor
var palindex = champ + 1;

if champ = 8 {
	palindex = 2;
} 

pal_swap_set(spr_Head_Palette,palindex,false);
    
draw_self();

pal_swap_reset();
