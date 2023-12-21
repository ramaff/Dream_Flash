/// @description Insert description here
// You can write your code in this editor


//texture_set_interpolation(0);

pal_swap_set(spr_Horror_Stack_Palette,boss_palette_index,false);
    
draw_self();

if champ = 1 {
	if bossStack >= 2 {
		draw_sprite_ext(spr_Cannon_Stacklet, 0, x, y - 11, bossSizeX, bossSizeY, image_angle, c_white, image_alpha);
		draw_sprite_ext(spr_Crawler_Stacklet, image_index, x, y - 57, bossSizeX, bossSizeY, image_angle, c_white, image_alpha);
	}
	if bossStack = 3 {
		draw_sprite_ext(spr_Flying_Stacklet_Still, image_index, x, y - 141, bossSizeX, bossSizeY, image_angle, c_white, image_alpha);
	}
}

pal_swap_reset();

//texture_set_interpolation(1);