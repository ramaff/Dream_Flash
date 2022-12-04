if distance_to_object(obj_Soul) <= 133 {
    im = direction;
    
    speed = min(speed + 0.5,bulletspeed);
    
    var pointDir = scr_Soul_Point();
    im += sin(degtorad(pointDir - im)) * rspeed;
    direction = im;

}

friction = 0.013;
image_angle = direction;

