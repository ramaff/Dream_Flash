// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Mouse_Maintain(){
	var _target_direction = point_direction(x,y,mouse_x,mouse_y) + shot_stats.Shot_Direction_Addition;
	
	direction = scr_Angle_Converge(direction, _target_direction, speed + 2);
	image_angle = direction
}