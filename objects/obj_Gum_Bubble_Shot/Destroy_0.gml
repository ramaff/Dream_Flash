/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _bullets_amt = array_length(captured_bullets)

var _i;

for(_i = 0; _i < _bullets_amt; _i++) {
	if instance_exists(captured_bullets[_i]) {
		captured_bullets[_i].direction = random(360);	
		//captured_bullets[_i].speed += 4;
	}
}