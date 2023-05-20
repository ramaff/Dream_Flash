//image_angle = direction;
direction += (bulletspeed * 60) / max(bulletOrbit, 1);
if (direction < 0) {
	direction += 360;
}

bulletOrbit += bulletspeed;	

bulletCenterX = starX
bulletCenterY = starY
    
var tarx = lengthdir_x(bulletOrbit, direction) + bulletCenterX;
var tary = lengthdir_y(bulletOrbit, direction) + bulletCenterY;

x = lerp(x,tarx,0.05)
y = lerp(y,tary,0.05)