/// @description Insert description here
// You can write your code in this editor

if warp_back {
	
	depth = obj_Soul_Parent.depth + 1;
	
	var _xs = obj_Soul_Parent.x;
	var _ys = obj_Soul_Parent.y;
	
	var _vs = obj_Soul_Parent.soulCurrentVerticalSpeed;
	var _hs = obj_Soul_Parent.soulCurrentHorizontalSpeed
	
	var dir = point_direction(_xs, _ys, warp_x, warp_y)
	var dist = point_distance(_xs, _ys, warp_x, warp_y)
	
	var move_point = point_direction(0,0, _hs, _vs);
	var _soul_speed = abs(point_distance(0,0, _hs, _vs))
	if _hs = 0 and _vs = 0 {
		move_point = dir;
	}
	var _angle_offset = -angle_difference(dir, move_point) / 10 * _soul_speed;
	var _angle_add = -1 * _angle_offset;
	var _seg_dist = 40
	var _segs = floor(dist) / _seg_dist
	
	var _blend = make_color_rgb(255, 100, 255)
	var _red_amount = 255;
		
	for(var _i = 0; _i < _segs; _i++) {
		var cd = _seg_dist * _i;
		var _pxx = _xs + lengthdir_x(cd, dir + _angle_offset)
		var _pyy = _ys + lengthdir_y(cd, dir + _angle_offset)
		_angle_offset += _angle_add / _segs
		draw_sprite_ext(spr_Retrace_Part, 0, _pxx, _pyy, 0.4, 0.4, dir + _angle_offset, _blend, 1)
		
		_blend = make_color_rgb(_red_amount, 100, 255)
		_red_amount -= 160 / _segs
	}
}




