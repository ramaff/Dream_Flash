/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
scr_bullet_lob(bullet_stats)
direction = scr_Angle_Converge(direction, scr_Soul_Point(), 3 / speed)

var _scale = scr_Wave(1, 1.25, 0.25, 0)

scr_set_bullet_size(bullet_stats.bullet_size * _scale)

speed = lerp(speed, bullet_stats.bullet_speed * 0.15, 0.05);
