/// @description Insert description here
// You can write your code in this editor
shadowSize = 0.24;
shadowYOffset = 16;

if bossActiveAttack[1] != 2 and bossActiveAttack[1] != -2 {
	draw_sprite_ext(spr_Boss_Shadow,0,x,y+shadowYOffset+jumpHeight,shadowSize * (1.2 - (jumpHeight / 1200)),shadowSize * (1.2 - (jumpHeight / 1200)),0,c_white,(0.5 - (jumpHeight/2000)));
}

draw_self();
