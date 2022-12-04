cOrbit += cOrbitSpeed;

if cOrbit > bulletOrbit + 50 {
	cOrbitSpeed = -1;
}
if ((cOrbit < bulletOrbit) and (cOrbitSpeed = -1)) {
	cOrbitSpeed = 1;	
}

if instance_exists(target) {
    bulletCenterX = target.x;
    bulletCenterY = target.y;
    
    bulletAngle += bulletspeed;
    if (bulletAngle >= 360) {
        bulletAngle -= 360;
    }
    
    image_angle = bulletAngle + 90;
    
    x = lengthdir_x(cOrbit, bulletAngle) + bulletCenterX;
    y = lengthdir_y(cOrbit, bulletAngle) + bulletCenterY;
} else {
    instance_destroy();
}

