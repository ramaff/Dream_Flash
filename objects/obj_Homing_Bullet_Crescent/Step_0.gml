image_angle = direction;

im = direction;

speed = min(speed + 0.5,bulletspeed);

var pointDir = scr_Soul_Point();
im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;

image_angle = direction;

//scr_Bullet_Power_Size(0.75);

bulletspeed += bulletspeed / bulletlife;
rspeed -= rspeed / (bulletlife);