/// @description Insert description here
// You can write your code in this editor
var palindex = champ;

if champ = 8 {
	palindex = 1;	
}

pal_swap_set(spr_Danger_Raiser_Palette,palindex,false);
    draw_self();
pal_swap_reset();
