/// @description Insert description here
// You can write your code in this editor

if !instance_exists(link) {
	instance_destroy();
	exit;
}

if angle_difference(other.direction, point_direction(other.x, other.y, x, y)) < 150 {
	other.x = link.x;
	other.y = link.y;
}
	




