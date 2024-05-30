if alarm[0] > (bulletlife / 1.5) {
	speed -= bulletspeed / (bulletlife / 2)
} else {

	if instance_exists(target) {
		direction = scr_Angle_Converge(direction, point_direction(x,y,target.x, target.y), speed / 2)
		speed = scr_Converge(speed, 1 + point_distance(x, y, target.x, target.y) / alarm[0], 0.05)
	}

}

