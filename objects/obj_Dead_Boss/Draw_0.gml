/// @description Insert description here
// You can write your code in this editor

//image_speed = 0;

if boss_palette != noone {
	pal_swap_set(boss_palette, boss_palette_index, false);

	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);

	pal_swap_reset();

} else {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}
