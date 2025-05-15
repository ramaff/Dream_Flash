/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

drain_rate += 0.0025

var _xx = x;
var _yy = y;
var _drain = drain_rate;
var _threshold = false;
with(obj_Soul_Parent) {
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

if _threshold {
	image_alpha = scr_Wave(0.2, 1, 0.25, 0)	
} else {
	image_alpha = lerp(image_alpha, 1, 0.2)	
}

var _hypothetical_speed = abs(point_distance(0, 0, h_speed, v_speed))
if _hypothetical_speed > max_speed {
	fric = 0.125 + ((_hypothetical_speed - max_speed) / 30)
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

