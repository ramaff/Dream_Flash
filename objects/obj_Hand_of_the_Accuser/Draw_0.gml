/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var palindex = champ;

if champ = 8 {
	palindex = 3;	
}

pal_swap_set(spr_Hand_Palettes,palindex,false);
    draw_self();
pal_swap_reset();

draw_sprite_ext(spr_Hand_Fire,fim / 5,x,y,bossSize,bossSize,0,c_white,1);