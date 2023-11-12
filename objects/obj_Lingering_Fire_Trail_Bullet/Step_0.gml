/// @description Insert description here
// You can write your code in this editor

if instance_exists(target) {
	
	var _dist = point_distance(x, y, target.x, target.y)
	
	if _dist > 70 {
		direction = point_direction(x, y, target.x, target.y);
		speed = (_dist - 70) / 15;
	}
} else {
	instance_destroy();	
}
