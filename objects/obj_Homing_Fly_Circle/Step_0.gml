image_angle = direction;

im = direction;

if speed > bulletspeed {
	speed = bulletspeed;	
}
if speed < bulletspeed * 0.1 {
	speed = bulletspeed * 0.1;	
}

/*
speed = min(speed + 0.5,bulletspeed);

var pointDir = scr_Soul_Point();
im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;

image_angle = direction;

scr_Bullet_Power_Size(0.75);

bulletspeed += bulletspeed / bulletlife;
rspeed -= rspeed / (bulletlife);