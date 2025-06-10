/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

bullet_stats.bullet_speed -= bullet_stats.bullet_friction
bullet_stats.bullet_speed = max(bullet_stats.bullet_speed, bullet_stats.bullet_min_speed);
speed = bullet_stats.bullet_speed;

direction = scr_Angle_Converge(direction, direction + target_direction_offset, 1);

var dir = point_direction(x,y,room_width / 2, room_height / 2);
var dist = point_direction(x,y,room_width / 2, room_height / 2);
if dist > 400 {
	x += lengthdir_x(dist / 100,dir);
	y += lengthdir_y(dist / 100,dir);
}
