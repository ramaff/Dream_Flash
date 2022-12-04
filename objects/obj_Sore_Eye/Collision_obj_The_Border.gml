	var i;
	i = point_direction(other.x, other.y, x, y);
	x += lengthdir_x(1 + speed, i);
	y += lengthdir_y(1 + speed, i);


	scr_Soul_Outside_Check();