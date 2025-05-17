/// @description Insert description here
// You can write your code in this editor

var _all_the_names = variable_struct_get_names(bosses_hit_tracker)
var _bosses_hit_count = array_length(_all_the_names)

for(var _i = 0; _i < _bosses_hit_count; _i++) {
	var _current_val = variable_struct_get(bosses_hit_tracker, _all_the_names[_i])
	
	variable_struct_set(bosses_hit_tracker, _all_the_names[_i], _current_val - 1)
}

// Inherit the parent event
event_inherited();

drain_rate += 0.0025

var _xx = x;
var _yy = y;
var _drain = drain_rate;
var _threshold = false;
if instance_exists(shot_stats.Shot_Follow_Origin) {
	with(shot_stats.Shot_Follow_Origin) {
		x = _xx;
		y = _yy + 10;
	
		senergy -= _drain;
		if senergy < _drain * 60 {
			_threshold = true;	
		}
		if senergy < 0 {
			instance_destroy(other)
		}
		if other.speed > other.max_speed + 10 {
			soulinvincibility = max(3, soulinvincibility);
		}
		other.depth = depth - 10
	}
}

if _threshold {
	image_alpha = scr_Wave(0.2, 1, 0.25, 0)	
} else {
	image_alpha = lerp(image_alpha, 1, 0.2)	
}

var _hypothetical_speed = abs(point_distance(0, 0, h_speed, v_speed))
if _hypothetical_speed > max_speed {
	fric = 0.125 + ((_hypothetical_speed - max_speed) / 50)
} else {
	fric = 0.125	
}

scr_Key_Press_Movement(v_speed, h_speed, max_speed, acceleration, fric, false)

vspeed = v_speed;
hspeed = h_speed;

var _bounce = false

_bounce = scr_Soul_Outside_Check(-40)

if _bounce {
	hspeed = -hspeed
	vspeed = -vspeed
	h_speed = -h_speed;
	v_speed = -v_speed;
}

image_angle += hspeed;
image_angle += vspeed / 5;

