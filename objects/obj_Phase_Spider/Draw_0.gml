/// @description Insert description here
// You can write your code in this editor
shadowSize = 0.2;
shadowYOffset = 8;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 2000)),shadowSize * (1.2 - (jumpHeight / 2500)),0,c_white,(0.8 - (jumpHeight/2000)));

draw_self();
