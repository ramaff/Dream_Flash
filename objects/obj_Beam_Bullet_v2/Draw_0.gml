/// @description Insert description here
// You can write your code in this editor

//draw_self()
var _size_fac = 2 + scr_Wave(0, 0.1, 0.5, 0)

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * _size_fac, image_yscale * _size_fac, image_angle, image_blend, image_alpha)
