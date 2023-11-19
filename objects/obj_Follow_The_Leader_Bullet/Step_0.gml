/// @description Insert description here
// You can write your code in this editor

if instance_exists(target) {
	if point_distance(x, y, target.x, target.y) > 60 {
		direction = point_direction(x, y, target.x, target.y);
		speed = target.speed;
	}
} else {
	if alarm[0] > 15 {
		alarm[] = 15;	
	}
}
