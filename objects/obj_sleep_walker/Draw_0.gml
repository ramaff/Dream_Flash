/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
var _x_offset = 0;

if sprite_index = spr_walker_handling || sprite_index = spr_walker_not_in_control {
	_x_offset = -50;
	if image_xscale < 0 {
		_x_offset = 50;	
	}
}

scr_Boss_Shadow(undefined, 40, _x_offset, 2);

// Palette Color Swap for different boss champs:
if boss_palette != noone {
	pal_swap_set(boss_palette, boss_palette_index, false);
}

draw_self();

pal_swap_reset();
