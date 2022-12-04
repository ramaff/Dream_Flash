bulletOrbit += bulletOrbitSpeed / (1 + ((bulletOrbit / bulletOrbitSpeed) / 200));

if instance_exists(target) {
    bulletCenterX = target.x + 40;
    bulletCenterY = target.y + 40;
    
    bulletAngle -= bulletspeed;
    if (bulletAngle < 0) {
        bulletAngle += 360;
    }
    
    image_angle = bulletAngle + 90;
    
    x = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
    y = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
} else {
    instance_destroy();
}

