/// @description Insert description here
// You can write your code in this editor

scr_Boss_Shadow();

var palindex = champ;

if champ = 8 {
	palindex = 2;	
}

pal_swap_set(spr_Crazy_Eyes_Palette,palindex,false);
draw_self();
pal_swap_reset();
