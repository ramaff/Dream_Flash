image_angle = direction;

//if speed < bulletspeed {
//    speed += (bulletspeed - speed) / 60;
//}

if deathSlash = 0 {
	//speed = min(speed + 0.0005,bulletspeed);

	var pointDir = scr_Soul_Point();
	image_angle += sin(degtorad(pointDir - image_angle)) * rspeed;
	direction = image_angle;
	
	souldir = scr_Soul_Point();
	var adif = 15 + abs(angle_difference(direction, souldir));
			
	speed += (45 - (adif)) / 600;
	rspeed += (0.015 * (adif)) / 900;
	
	if rspeed < 0.5 {
		rspeed = 0.5;	
	}
	if speed < 0.5 {
		speed = 0.5;	
	}
	if speed > 8 {
		speed = 8;
	}	
} else {
	if speed < bulletspeed {
		speed += (bulletspeed - speed) / 120;
	}
}