/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _bounce = scr_wall_bounce_v2()

if _bounce {
	bullet_stats.bullet_speed += 0.5;
	speed += 0.5;
}