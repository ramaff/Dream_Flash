/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow(undefined, undefined, undefined, 2);

// Palette Color Swap for different boss champs:
var _boss_palette = spr_ninja_spirit_v2_palette;
pal_swap_set(_boss_palette, 3, false);

draw_self();

pal_swap_reset();
