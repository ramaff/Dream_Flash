if shot_stats.Shot_Orbital_Type = 1 {
	if instance_exists(otarget) {
		direction = point_direction(otarget.x, otarget.y, mouse_x, mouse_y)
	} else {
		direction = point_direction(x, y, mouse_x, mouse_y)
	}
    speed = shot_stats.Shot_Speed;
    shot_stats.Shot_Orbital_Type = 0;
}

