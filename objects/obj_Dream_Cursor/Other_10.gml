/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Menu_Button_Parent) {
	var _tar_button = target_button;
	var _xx = x;
	var _yy = y;
	var _closest_dist = 9999;
	with (obj_Menu_Button_Parent) {
		if id == _tar_button {
			continue
		}
		var _dist = point_distance(x, y, _xx, _yy)	
		if _dist < _closest_dist {
			_tar_button = id;
			_closest_dist = _dist
		}
	}
	target_button = _tar_button;
	x = target_button.x;
	y = target_button.y;
}