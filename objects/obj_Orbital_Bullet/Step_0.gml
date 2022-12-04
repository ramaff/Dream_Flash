if instance_exists(target) {
    bulletCenterX = target.x;
    bulletCenterY = target.y;
    
    bulletAngle += bulletspeed;
    if (bulletAngle >= 360) {
        bulletAngle -= 360;
    }
    
    image_angle = bulletAngle + 90;
    
    x = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
    y = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
} else {
    instance_destroy();
}

