// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Push_Away_From_Self(dist = 150, push_speed = 2){

	with object_index {
		if point_distance(x, y, other.x, other.y) < dist {
			var dirrr = point_direction(x, y, other.x, other.y) + 180
			x += lengthdir_x(push_speed, dirrr);
			y += lengthdir_y(push_speed, dirrr);
		}
	}

}