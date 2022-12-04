var pointDir = point_direction(x,y,tarX,tarY);

if rspeed > 0 {

	var im = direction;

	speed = min(speed + 0.5,bulletspeed);

	im += sin(degtorad(pointDir - im)) * rspeed;
	direction = im;

}
var diss = point_distance(x,y,tarX,tarY)
if diss < 20 || direction = pointDir {
	rspeed = 0;	
}

speed = (bulletspeed) + (diss / (bulletlife - 60))
speed = clamp(speed, bulletspeed * 1, bulletspeed * 5);