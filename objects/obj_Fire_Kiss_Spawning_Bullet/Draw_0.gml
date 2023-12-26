/// @description Insert description here
// You can write your code in this editor


var shadow_scale = 2 * (1.2 - (bulletbounceY / 400))
var shadow_alpha = (0.75 - (bulletbounceY/600))

// Palette Color Swap for different boss champs:
var _pal_index = champ;

pal_swap_set(spr_fire_starter_v2_palette, _pal_index, false);

draw_sprite_ext(spr_Bullet_Shadow,0,x,y+bulletbounceY,image_xscale * shadow_scale,image_yscale * shadow_scale,0,c_white,shadow_alpha);

draw_self();

pal_swap_reset();
