/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow(undefined, undefined, undefined, 2);

// Palette Color Swap for different boss champs:
var _pal_index = champ;


if (active_attack = 2 || (active_attack = 6 and active_attack_delay < 50)) and champ != 1 {
	
	_pal_index = 3;
	
	pal_swap_set(spr_ninja_spirit_v2_palette, _pal_index, false);
	
	var _i = 0
	var _clone_count = 4
	if active_attack = 6 {
		_clone_count = 3	
	}
	for(_i = 1; _i < _clone_count; _i++) {
		var _s_pos = shadow_positions[_i];
		var _x_scale = abs(image_xscale)
		
		if (_s_pos.yy - yy_center) > 0 {
			_x_scale = -1 * _x_scale
		}
		
		draw_sprite_ext(sprite_index, image_index, _s_pos.xx, _s_pos.yy, _x_scale, image_yscale, image_angle, image_blend, image_alpha)	
	}
} else {
	pal_swap_set(spr_ninja_spirit_v2_palette, _pal_index, false);	
}

draw_self();

pal_swap_reset();