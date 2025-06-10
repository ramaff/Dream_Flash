/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

direction = scr_Angle_Converge(direction, scr_Soul_Point(), bullet_stats.homing_speed)

var _bounce = scr_wall_bounce_v2()

if _bounce {
	bullet_stats.bullet_speed += 0.25;
	speed += 0.25;
}