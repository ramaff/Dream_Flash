/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow(undefined, undefined, undefined, 2);

// Palette Color Swap for different boss champs:
var _pal_index = champ;

//pal_swap_set(spr_Crazy_Eyes_Palette, _pal_index, false);

draw_self();

//pal_swap_reset();
if active_attack = 2 {
	var _i = 0
	for(_i = 1; _i < 4; _i++) {
		var _s_pos = shadow_positions[_i];
		draw_sprite_ext(sprite_index, image_index, _s_pos.xx, _s_pos.yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)	
	}
}