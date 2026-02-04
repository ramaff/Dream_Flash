/// @description Insert description here
// You can write your code in this editor
if magnitude < 0 {
	exit;	
}

magnitude -= other.bullet_stats.bullet_power;
var _dir = point_direction(x, y, other.x, other.y);

image_alpha = 1;

with(other) {
	x += lengthdir_x(speed + 4, _dir)
	y += lengthdir_y(speed + 4, _dir)
}
