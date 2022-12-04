/// @description Insert description here
// You can write your code in this editor

shadowSize = 0.3;

shadowYOffset += shadowLiftDir;
y -= shadowLiftDir;

if shadowYOffset > 155 {
	shadowLiftDir = -0.25;
}
if shadowYOffset < 145 {
	shadowLiftDir = 0.25;	
}

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 1000)),shadowSize * (1.2 - (jumpHeight / 1500)),0,c_white,(0.5 - (jumpHeight/2000)));

var palindex = champ;

if champ = 8 {
	palindex = 2;
}

draw_sprite_ext(spr_Barrier_Ball,palindex, x - 2, y + shadowYOffset - 50, 0.5 + random(0.05), 0.5 + random(0.05), 0, c_white, 1);

pal_swap_set(spr_Barrier_Palette,palindex,false);
    
draw_self();

pal_swap_reset();