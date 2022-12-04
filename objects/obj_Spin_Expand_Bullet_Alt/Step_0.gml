//image_angle = direction;
direction += (bulletspeed * 60) / max(bulletOrbit, 1);
if (direction < 0) {
	direction += 360;
}

bulletOrbit += bulletspeed;	

bulletCenterX = starX
bulletCenterY = starY
    
x = lengthdir_x(bulletOrbit, direction) + bulletCenterX;
y = lengthdir_y(bulletOrbit, direction) + bulletCenterY;