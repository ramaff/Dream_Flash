function scr_Home_Towards_Soul() {
	speed = min(speed + 0.5,bulletspeed);

	var pointDir = direction = scr_Soul_Point();
	image_angle += sin(degtorad(pointDir - image_angle)) * rspeed;
	direction = image_angle;



}
