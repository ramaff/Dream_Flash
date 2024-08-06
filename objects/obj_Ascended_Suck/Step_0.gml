if instance_exists(target) {
	//move_towards_point(target.x,target.y,16);
	var _yy = 0;
	if target.Charge_Hold = 2 {
		var _yy = -65;
	}
	target_direction = point_direction(x,y,target.x,target.y + _yy);	
	speed += 0.1;
	direction = scr_Angle_Converge(direction, target_direction, turn_speed);
	turn_speed += 1;
	if point_distance(x, y, target.x, target.y + _yy) < speed {
		event_user(0)	
	}
} else {
	instance_destroy();	
}

image_angle += 5;