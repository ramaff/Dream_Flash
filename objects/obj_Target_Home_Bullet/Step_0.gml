if instance_exists(bullettarget) {

	var pointDir = point_direction(x,y,bullettarget.x,bullettarget.y);

	if rspeed > 0 {

		var im = direction;

		speed = min(speed + 0.5,bulletspeed);

		im += sin(degtorad(pointDir - im)) * rspeed;
		direction = im;

	}
	var diss = point_distance(x,y,bullettarget.x,bullettarget.y);
	if diss < 30 {
		instance_destroy();
	}

	//speed = (diss / alarm[0]) + 1;
} else {
	instance_destroy();	
}