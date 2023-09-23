/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow(undefined, undefined, undefined, 2);

// Palette Color Swap for different boss champs:
var _pal_index = champ + 1;
if champ = 0 {
	_pal_index = 0	
}

pal_swap_set(spr_wisper_v2_palette, _pal_index, false);

draw_self();

pal_swap_reset();
