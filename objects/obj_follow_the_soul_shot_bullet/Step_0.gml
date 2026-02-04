/// @description Insert description here
// You can write your code in this editor

event_inherited()


if instance_exists(bullet_stats.bullet_target) {
	var _dist = point_distance(x, y, bullet_stats.bullet_target.x, bullet_stats.bullet_target.y)
	if _dist < 150 {
		direction = point_direction(x, y, bullet_stats.bullet_target.x + bullet_stats.follow_xoffset, bullet_stats.bullet_target.y + bullet_stats.follow_yoffset);
		if _dist < 50 {
			speed = lerp(speed, bullet_stats.bullet_speed / 2, 0.25);
		} else {
			speed = lerp(speed, min(_dist - 50, bullet_stats.bullet_speed + (100 / (max(1, _dist + 50)))), 0.25);
		}
	}
}
