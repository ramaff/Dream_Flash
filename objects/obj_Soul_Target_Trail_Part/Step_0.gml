if instance_exists(target) {
	//move_towards_point(target.x,target.y,16);
	speed += 0.1;
	var _target_direction = point_direction(x,y,target.x,target.y);
	direction = scr_Angle_Converge(direction, _target_direction, turn_speed);
	turn_speed += 1;
} else {
	instance_destroy();	
}

scr_After_Image(8, true, false);