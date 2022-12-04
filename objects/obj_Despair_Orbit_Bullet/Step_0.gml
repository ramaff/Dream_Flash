
    bulletCenterX = originX;
    bulletCenterY = originY;
    
    bulletCircumference = distance_to_point(bulletCenterX,bulletCenterY) * pi;
    
    bulletAngle += bulletspeed * (360 / bulletCircumference);
    if (bulletAngle >= 360) {
        bulletAngle -= 360;
    }
    
    image_angle = bulletAngle + 90;
    
    x = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
    y = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;

