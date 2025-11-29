/// @description Insert description here
// You can write your code in this editor

var _direction = true

var _xx = x;
var _yy = y;

if instance_exists(target_button) {
	_xx = target_button.x;
	_yy = target_button.y;
}

if InputCheck(INPUT_VERB.DOWN) {
	_yy += 1;
} else if InputCheck(INPUT_VERB.UP) {
	_yy -= 1;
} else if InputCheck(INPUT_VERB.RIGHT) {
	_xx += 1;
} else if InputCheck(INPUT_VERB.LEFT) {
	_xx -= 1;
} else {
	_direction = false;
	exit;
}

movement_delay = 15;

var _tar_button = target_button;
var _og_button = target_button;
var _closest_dist = 9999;

if instance_exists(obj_Menu_Button_Parent) and _direction == true {
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
}

if _tar_button == _og_button {
	target_button = noone;
	
	if InputCheck(INPUT_VERB.DOWN) {
		y = 0;
	}
	if InputCheck(INPUT_VERB.UP) {
		y += 1280
		x += 1;
	}
	if InputCheck(INPUT_VERB.RIGHT) {
		x = 0;
		y += 1;
	}
	if InputCheck(INPUT_VERB.LEFT) {
		x += 1280
	}
	
	event_user(0)
	exit;
}

x = target_button.x;
y = target_button.y;
if instance_exists(target_button) {
	with (target_button) {
		event_user(0);	
	}
}
if instance_exists(_og_button) {
	with (_og_button) {
		event_user(1);	
	}
}

