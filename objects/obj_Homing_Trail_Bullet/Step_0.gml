

image_angle = direction;

var pointDir = scr_Soul_Point();
image_angle += sin(degtorad(pointDir - image_angle)) * rspeed * rspeedfact;
direction = image_angle;
	
souldir = scr_Soul_Point();
var adif = 15 + abs(angle_difference(direction, souldir));
			
speed += (40 - (adif)) / (1200 / bulletspeed);
rspeed += (0.015 * (adif)) / 900;
	
if rspeed < 0.5 {
	rspeed = 0.5;	
}

if speed < (bulletspeed * 0.5) {
	speed = bulletspeed * 0.5;	
}
if speed > bulletspeed {
	speed = bulletspeed;
}	

bulletspeed += bulletspeed / 120;
rspeedfact -= rspeedfact / 120;