/// @description Insert description here
// You can write your code in this editor
var shadowSize = 0.25;
var shadowYOffset = 16;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 300)),shadowSize * (1.2 - (jumpHeight / 300)),0,c_white,(0.5 - (jumpHeight/400)));

var palindex = champ;

if champ = 8 {
	palindex = 3;	
}

pal_swap_set(spr_Agony_Amorphous_Palette,palindex,false);
    draw_self();
pal_swap_reset();
