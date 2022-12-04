/// @description Insert description here
// You can write your code in this editor
shadowSize = 0.275;
shadowYOffset = bossHeight;

draw_sprite_ext(spr_Boss_Shadow,0,x+lengthdir_x(shadowYOffset,image_angle-90),y+lengthdir_y(shadowYOffset,image_angle-90),shadowSize * (1.2 - (bossHeight / 1200)),shadowSize * (1.2 - (bossHeight / 1200)),image_angle,c_white,(0.5 - (bossHeight/2000)));

//texture_set_interpolation(0);

var palindex = champ;

if champ = 8 {
	palindex = 4;
}
pal_swap_set(spr_Growing_Sorrows_Palette,palindex,false);
    draw_self();

if bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = 5 {
	if bossActiveAttackDuration[1] > 0 {
		draw_sprite_ext(spr_Sorrow_Cry, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	} 
} 

pal_swap_reset();

//texture_set_interpolation(1);