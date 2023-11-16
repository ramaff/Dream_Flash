/// @description Insert description here
// You can write your code in this editor

// If you want the boss to have a shadow underneath:
scr_Boss_Shadow(undefined, undefined, undefined, 2);

// Palette Color Swap for different boss champs:
var _pal_index = champ;

//pal_swap_set(spr_Crazy_Eyes_Palette,_pal_index,false);

spawn_size_fac = lerp(spawn_size_fac, 1, 0.05)
var _xs = image_xscale * spawn_size_fac;
var _ys = image_yscale * spawn_size_fac;

draw_sprite_ext(sprite_index, image_index, x, y, _xs, _ys, image_angle, image_blend, image_alpha);

//pal_swap_reset();
