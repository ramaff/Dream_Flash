if orbiting = 1 {
	bulletAngle -= (bulletspeed * 60) / max(bulletOrbit, 1);
	if (bulletAngle < 0) {
	    bulletAngle += 360;
	}
}

	//bulletOrbit += bulletOrbitSpeed / (1 + ((bulletOrbit / bulletOrbitSpeed) / 200));
	if orbiting = 0 {
		bulletOrbit += bulletspeed;	
	} 

	if instance_exists(target) {
	    bulletCenterX = target.x + 40;
	    bulletCenterY = target.y + 40;
    
    
	    image_angle = bulletAngle + 90;
    
	    x = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
	    y = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
	} else {
	    instance_destroy();
	}

image_angle -= 3;