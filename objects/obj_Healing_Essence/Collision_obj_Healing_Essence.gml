/// @description Insert description here
// You can write your code in this editor

if !shot_stats.Prime_Shot {

	var _dir;
	_dir = point_direction(x, y, other.x, other.y)// + 180;
	x += lengthdir_x(10, _dir + 180);
	y += lengthdir_y(10, _dir + 180);

}


