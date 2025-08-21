/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

var _home_speed = (bullet_stats.homing_speed * (alarm[0] / bullet_stats.bullet_life_span))

bullet_stats.bullet_direction = scr_Angle_Converge(bullet_stats.bullet_direction, scr_Soul_Point(), _home_speed) 
direction = bullet_stats.bullet_direction + scr_Wave(-60, 60, 0.2, 0)

scr_Soul_Outside_Check(-20)