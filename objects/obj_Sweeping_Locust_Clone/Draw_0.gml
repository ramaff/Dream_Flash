/// @description Insert description here
// You can write your code in this editor

scr_Boss_Shadow(undefined, undefined, undefined, 2);

var palindex = champ;

pal_swap_set(spr_Locust_Palette,palindex,false);
draw_self();
pal_swap_reset();