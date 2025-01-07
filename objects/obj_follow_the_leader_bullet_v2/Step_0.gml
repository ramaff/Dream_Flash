/// @description Insert description here
// You can write your code in this editor

event_inherited()

if instance_exists(bullet_stats.bullet_target) {
	direction = point_direction(x, y, bullet_stats.bullet_target.x, bullet_stats.bullet_target.y);
	speed = point_distance(x, y, bullet_stats.bullet_target.x, bullet_stats.bullet_target.y) / 10;
} else {
	if alarm[0] > 15 {
		alarm[0] = 15;	
	}
}
