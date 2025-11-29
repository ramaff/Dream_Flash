/// @description Insert description here
// You can write your code in this editor
var _tar_button = target_button;
var _og_button = target_button;
var _closest_dist = 9999;

var _xx = x;
var _yy = y;

with (obj_Menu_Button_Parent) {
	if id != _og_button {
		var _dist = point_distance(x, y, _xx, _yy)	
		if _dist < _closest_dist and x != _xx and y != _yy {
			_tar_button = id;
			_closest_dist = _dist
		}
	}
}
target_button = _tar_button;