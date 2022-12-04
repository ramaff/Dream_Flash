image_angle += speed;

speed += 0.025 * bulletspeed;

im = direction;

speed = min(speed + 0.5,speed);

var pointDir = scr_Soul_Point();
im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;

rspeed -= 0.01;