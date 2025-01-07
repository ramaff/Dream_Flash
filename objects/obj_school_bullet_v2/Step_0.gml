
cOrbit += bulletspeed;

if cOrbit > bulletOrbit {
	cOrbit = bulletOrbit;	
}

if instance_exists(target) {
    bulletCenterX = target.x;
    bulletCenterY = target.y;
    
    bulletAngle = target.direction - direction;
    
    x = lengthdir_x(cOrbit, bulletAngle) + bulletCenterX;
    y = lengthdir_y(cOrbit, bulletAngle) + bulletCenterY;
} else {
    instance_destroy();
}

