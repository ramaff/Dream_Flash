/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if instance_exists(captured_bullet) {
	captured_bullet.x = x;
	captured_bullet.y = y;
	/*image_alpha = 0;
	var _spr = sprite_index;
	var _img = image_index;
	var _xx = x;
	var _yy = y;
	var _xscale = image_xscale;
	var _yscale = image_yscale;
	var _rot = image_angle;
	var _col = image_blend;
	var _alp = image_alpha;
	with(captured_bullet) {
		draw_sprite_ext(_spr, _img, _xx, _yy, _xscale, _yscale, _rot, _col, _alp * 1)	
	} */
} /*else {
	image_alpha = shot_stats.Shot_Alpha;
} */
event_inherited();
