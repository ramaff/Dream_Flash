/// @description Insert description here
// You can write your code in this editor

//draw_self()
var _size_fac = 2 + scr_Wave(0, 0.1, 0.5, 0)
//var _ontop_alpha = image_alpha * 0.1;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * _size_fac, image_yscale * _size_fac, image_angle, c_white, image_alpha)
if sprite_index = spr_Boss_Beam_Segment {
	draw_sprite_ext(spr_Boss_Beam_Segment_Ontop, image_index, x, y, image_xscale * _size_fac, image_yscale * _size_fac, image_angle, image_blend, image_alpha)
}
if sprite_index = spr_Boss_Beam_Start {
	draw_sprite_ext(spr_Boss_Beam_Start_Ontop, image_index, x, y, image_xscale * _size_fac, image_yscale * _size_fac, image_angle, image_blend, image_alpha)
}
if sprite_index = spr_Boss_Beam_Tail {
	draw_sprite_ext(spr_Boss_Beam_Tail_Ontop, image_index, x, y, image_xscale * _size_fac, image_yscale * _size_fac, image_angle, image_blend, image_alpha)
}