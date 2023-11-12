//image_angle = direction;
bulletspeed -= (bulletspeed * 2) / bulletlife;
speed -= (speed * 2) / bulletlife;

if bulletspeed < 0 {
	bulletspeed = 0;	
}
if speed < 0 {
	speed = 0;	
}

