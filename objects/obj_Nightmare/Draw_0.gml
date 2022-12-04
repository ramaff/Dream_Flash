/// @description Insert description here
// You can write your code in this editor

shadowSize = 0.3;
shadowYOffset = 100;

if currentphase = 2 {
	shadowYOffset = 175;	
}

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 1000)),shadowSize * (1.2 - (jumpHeight / 1500)),0,c_white,(0.5 - (jumpHeight/2000)));

draw_self();