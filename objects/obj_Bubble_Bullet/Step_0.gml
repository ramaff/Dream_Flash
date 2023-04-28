var idir = direction;

var pointDir = scr_Soul_Point();
idir += sin(degtorad(pointDir - idir)) * rspeed;
direction = idir;
	
var adif = 15 + abs(angle_difference(direction, pointDir));
			
rspeed += (0.005 * (adif)) / 900;
	
if rspeed < 0.5 {
	rspeed = 0.5;	
}


if speed > bulletspeed {
	speed = bulletspeed;
}	

bulletspeed -= bulletspeed / bulletlife;
if bulletspeed < 1 {
	bulletspeed = 1;	
}
