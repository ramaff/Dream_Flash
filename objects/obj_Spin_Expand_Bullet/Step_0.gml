//image_angle = direction;

direction -= (bulletspeed * 60) / max(bulletOrbit, 1);
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