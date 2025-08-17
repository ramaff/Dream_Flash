/// @description Insert description here
// You can write your code in this editor

if !instance_exists(target) {
	instance_destroy();
	exit;
}

path_position = scr_Round_To_Nearest(target.path_position + offset, 0.02);

x = path_get_x(boss_path, path_position)
y = path_get_y(boss_path, path_position)

/*var _dist = point_distance(x, y, target.x, target.y)

image_alpha = 1;
if _dist > 100 {
	image_alpha -= (_dist - 100) / 150
}