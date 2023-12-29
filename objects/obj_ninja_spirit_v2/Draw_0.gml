/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow(undefined, undefined, undefined, 2);

// Palette Color Swap for different boss champs:

if (active_attack = 2 || (active_attack = 6 and active_attack_delay < 50)) and champ != 1 {
	
	pal_swap_set(boss_palette, 3, false);
	
	var _i = 0
	var _clone_count = 4
	if active_attack = 6 {
		_clone_count = 3	
	}
	for(_i = 0; _i < _clone_count; _i++) {
		var _clone = shadow_positions[_i].boss
		if instance_exists(_clone) {
			with (_clone) {
				sprite_index = other.sprite_index;
				image_index = other.image_index;
				if (y - other.yy_center) > 0 {
					image_xscale = -1 * abs(image_xscale)
				} else {
					image_xscale = abs(image_xscale)
				}
			}
		}
	}
} else {
	pal_swap_set(boss_palette, boss_palette_index, false);	
}

draw_self();

pal_swap_reset();