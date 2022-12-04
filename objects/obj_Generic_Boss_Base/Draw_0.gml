/// @description Insert description here
// You can write your code in this editor

//texture_set_interpolation(0);

var shadowSize = 0.2;
var shadowYOffset = bossHeight;
var shadowXOffset = 50;
if image_xscale < 0 {
	shadowXOffset = -50;
}

draw_sprite_ext(spr_Boss_Shadow,0,x + shadowXOffset,y+shadowYOffset,shadowSize * (1.2 - (bossHeight / 1200)),shadowSize * (1.2 - (bossHeight / 1200)),0,c_white,(0.5 - (bossHeight/2000)));

var palindex = champ + 1;

if champ = 8 {
	palindex = 4;
} 

pal_swap_set(spr_Spooky_Spirit_Palette,palindex,false);

if bossActiveAttack[1] != 2 and bossActiveAttack[1] != 6 {
	//if bossActiveAttackDelay[1] >= 0 || bossActiveAttackDuration[1] > 0 {
		draw_sprite_ext(spr_Spooky_Trail, trailindex, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
	//}
}
draw_self();
/*
if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = -1 || bossActiveAttack[1] = -3 || bossActiveAttack[1] = -4 {
	if bossActiveAttackDelay[1] >= 0 || bossActiveAttackDuration[1] > 0 {
		draw_sprite_ext(spr_Spooky_Eye_Attack, image_index - 3, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
	} 
} 
*/

pal_swap_reset();

//texture_set_interpolation(1);