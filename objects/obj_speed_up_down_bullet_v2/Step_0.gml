/// @description Insert description here
// You can write your code in this editor

image_angle = direction;

speed = lerp(speed, bullet_stats.bullet_speed + scr_Wave(-bullet_stats.bullet_speed, bullet_stats.bullet_speed, 1, bullet_stats.bullet_life_span / 60), 0.1)

