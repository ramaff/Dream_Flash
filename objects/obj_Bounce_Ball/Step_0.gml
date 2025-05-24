/// @description Insert description here
// You can write your code in this editor

speed = min(50, speed);
max_speed = min(50, shot_stats.Shot_Speed);

var _all_the_names = variable_struct_get_names(bosses_hit_tracker)
var _bosses_hit_count = array_length(_all_the_names)

for(var _i = 0; _i < _bosses_hit_count; _i++) {
	var _current_val = variable_struct_get(bosses_hit_tracker, _all_the_names[_i])
	
	variable_struct_set(bosses_hit_tracker, _all_the_names[_i], _current_val - 1)
}

// Inherit the parent event
event_inherited();

drain_rate += 0.0025 * (shot_stats.Real_Essence_Cost / 30)

var _xx = x;
var _yy = y;
var _drain = max(0, drain_rate)

var _hypothetical_speed = abs(point_distance(0, 0, h_speed, v_speed))
if _hypothetical_speed > max_speed {
	fric = 0.125 + ((_hypothetical_speed - max_speed) / 50)
} else {
	fric = 0.125	
}

var _threshold = false;

if instance_exists(shot_stats.Shot_Follow_Origin) {
	with(shot_stats.Shot_Follow_Origin) {
		if other.shot_stats.Prime_Shot {
			x = _xx;
			y = _yy + 10;
	
			senergy -= _drain;
			if _hypothetical_speed > other.max_speed + 5 {
				soulinvincibility = max(5, soulinvincibility);
			}
		}
		if senergy < _drain * 90 {
			_threshold = true;	
		}
		if senergy < 0 and _drain > 0 {
			instance_destroy(other)
		}
	
		other.depth = depth - 10
	}
}

if _threshold {
	image_alpha = scr_Wave(0.2, 1, 0.25, 0)	
} else {
	image_alpha = lerp(image_alpha, 1, 0.2)	
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

