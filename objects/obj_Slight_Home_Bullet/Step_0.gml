image_angle = direction;

speed = min(speed + 0.5,bulletspeed);

var pointDir = scr_Soul_Point();
image_angle += sin(degtorad(pointDir - image_angle)) * rspeed;
direction = image_angle;

