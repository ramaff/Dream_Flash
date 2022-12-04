im = direction;

speed = min(speed + 0.5,bulletspeed);

var pointDir = scr_Soul_Point();
im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;

image_angle = 0;

