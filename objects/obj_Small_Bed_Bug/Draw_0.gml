/// @description Insert description here
// You can write your code in this editor
shadowSize = 0.1;
shadowYOffset = 8;

draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 2000)),shadowSize * (1.2 - (jumpHeight / 3000)),0,c_white,(0.5 - (jumpHeight/4000)));

draw_self();
