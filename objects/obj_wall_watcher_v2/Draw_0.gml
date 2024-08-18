/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow(0.4, lengthdir_y(boss_height,image_angle-90) - boss_height, lengthdir_x(boss_height,image_angle-90), 2, image_angle);

// Palette Color Swap for different boss champs:
if boss_palette != noone {
	pal_swap_set(boss_palette, boss_palette_index, false);
}

draw_self();

//pal_swap_reset();
