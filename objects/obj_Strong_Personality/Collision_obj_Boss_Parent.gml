/// @description Insert description here
// You can write your code in this editor
if magnitude < 0 {
	exit;	
}

magnitude -= 10;
var _dir = point_direction(x, y, other.x, other.y);

image_alpha = 1;

with(other) {
	bosshealth -= 2;
	if global.roomtime mod 5 = 0 {
		scr_setup_dmg_indicator(x,y, 10, c_white);
	}
	x += lengthdir_x(5, _dir)
	y += lengthdir_y(5, _dir)
}
