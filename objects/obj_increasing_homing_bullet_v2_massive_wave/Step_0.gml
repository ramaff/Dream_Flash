/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//bullet_stats.angular_velocity += bullet_stats.wave_strength / bullet_stats.wave_time

//direction += bullet_stats.angular_velocity


var _home_speed = 1 + bullet_stats.homing_speed - (bullet_stats.homing_speed * (alarm[0] / bullet_stats.bullet_life_span))

direction = scr_Angle_Converge(direction, scr_Soul_Point() + scr_Wave(-90, 90, 1.5, 0), _home_speed)
