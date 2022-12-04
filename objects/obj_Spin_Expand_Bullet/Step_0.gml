//image_angle = direction;

direction -= (bulletspeed * 60) / max(bulletOrbit, 1);
if (direction < 0) {
	direction += 360;
}

bulletOrbit += bulletspeed;	

bulletCenterX = starX
bulletCenterY = starY
    
x = lengthdir_x(bulletOrbit, direction) + bulletCenterX;
y = lengthdir_y(bulletOrbit, direction) + bulletCenterY;

/*
direction += 2;
speed = 0;

expand += bulletcrowdspeed;

var dis = distance_to_point(starX, starY);
ang += bulletspeed / (dis / 36);

if dis < expand {
	x = starX + lengthdir_x(expand, bulletcrowddirection + ang);
	y = starY + lengthdir_y(expand, bulletcrowddirection + ang);
}