/// @description Insert description here
// You can write your code in this editor

//var _tar_dir = (round(direction / 90) + 0.5) * 90

event_inherited()

var _tar_dir = 0

direction = scr_Angle_Converge(direction, _tar_dir, 0.25)

bullet_stats.bullet_speed += bullet_stats.bullet_acceleration
speed = bullet_stats.bullet_speed;
