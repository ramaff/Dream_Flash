/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _bullets_amt = array_length(captured_bullets)

var _i;
var _xx = 0;
var _yy = 0;
var _dist = 0;
var _ang = 0;

for(_i = 0; _i < _bullets_amt; _i++) {
	_ang += 60;
	_dist = sqrt(20 * _i)
	_xx = lengthdir_x(_dist, _ang) - 2 + random(4);
	_yy = lengthdir_y(_dist, _ang) - 2 + random(4);
	if instance_exists(captured_bullets[_i]) {
		captured_bullets[_i].x = x + _xx;	
		captured_bullets[_i].y = y + _yy;	
	}
}