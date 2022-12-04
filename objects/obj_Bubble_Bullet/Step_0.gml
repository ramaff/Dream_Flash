var idir = direction;

var pointDir = scr_Soul_Point();
idir += sin(degtorad(pointDir - idir)) * rspeed;
direction = idir;
	
souldir = scr_Soul_Point();
var adif = 15 + abs(angle_difference(direction, souldir));
			
//speed += (40 - (adif)) / (1200 / bulletspeed);
rspeed += (0.005 * (adif)) / 900;
	
if rspeed < 0.5 {
	rspeed = 0.5;	
}

/*
if speed < (bulletspeed * 0.1) {
	speed = bulletspeed * 0.1;	
}
*/
if speed > bulletspeed {
	speed = bulletspeed;
}	

bulletspeed -= bulletspeed / bulletlife;
if bulletspeed < 1 {
	bulletspeed = 1;	
}
