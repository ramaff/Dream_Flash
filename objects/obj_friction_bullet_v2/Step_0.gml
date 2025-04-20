/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

bullet_stats.bullet_speed -= bullet_stats.bullet_friction
bullet_stats.bullet_speed = max(bullet_stats.bullet_speed, bullet_stats.bullet_min_speed);
speed = bullet_stats.bullet_speed;