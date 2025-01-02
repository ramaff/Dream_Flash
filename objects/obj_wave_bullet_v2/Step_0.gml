/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//var _ang = bullet_stats.wave_strength * sqrt(bullet_stats.bullet_life_span / alarm[0])
//var _tim = bullet_stats.wave_time

//direction += scr_Wave(-_ang, _ang, _tim, 0)

//direction = scr_Wave(direction - bullet_stats.wave_strength, direction + bullet_stats.wave_strength, 
//					 bullet_stats.wave_time, bullet_stats.wave_time / 3)

//bullet_stats.age++;

bullet_stats.angular_velocity += bullet_stats.wave_strength / bullet_stats.wave_time

direction += bullet_stats.angular_velocity
