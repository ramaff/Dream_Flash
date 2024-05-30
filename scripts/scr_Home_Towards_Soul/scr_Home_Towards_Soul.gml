function scr_Home_Towards_Soul(_speed = bulletspeed, _rspeed = rspeed) {
	speed = min(speed + 0.5, _speed);

	var pointDir = direction = scr_Soul_Point();
	image_angle += sin(degtorad(pointDir - image_angle)) * _rspeed;
	direction = image_angle;



}
