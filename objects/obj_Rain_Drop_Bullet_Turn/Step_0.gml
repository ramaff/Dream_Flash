image_angle = direction;
if speed != 0 {
	speed += 0.05 / speed;
}

direction = scr_Angle_Converge(direction, target_angle, speed / 10);