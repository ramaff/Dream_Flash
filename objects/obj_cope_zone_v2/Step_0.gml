/// @description Insert description here
// You can write your code in this editor

speed = lerp(speed, target_speed, 0.01);
direction = scr_Angle_Converge(direction, target_direction, 1);

if distance_to_point(room_width/2, room_height/2) > 300 {
	var _ang = point_direction(x,y,room_width/2, room_height/2)
	scr_Angle_Converge(direction, _ang, 3);
}




