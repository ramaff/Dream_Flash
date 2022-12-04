
	bulletAngle -= (bulletspeed * 60) / max(bulletOrbit, 1);
	if (bulletAngle < 0) {
	    bulletAngle += 360;
	}

	bulletOrbit += bulletspeed;	


	bulletCenterX = startx;
	bulletCenterY = starty;
    
    
	image_angle = bulletAngle + 90;
    
	x = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
	y = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
