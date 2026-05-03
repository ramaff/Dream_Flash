/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _home_speed = (bullet_stats.homing_speed * (alarm[0] / bullet_stats.bullet_life_span))

direction = scr_Angle_Converge(direction, scr_Soul_Point(), _home_speed)
