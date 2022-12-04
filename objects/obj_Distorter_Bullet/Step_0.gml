image_angle = direction;

im = direction;

speed = min(speed + 0.5,bulletspeed);

var pointDir = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;

image_angle = direction;

