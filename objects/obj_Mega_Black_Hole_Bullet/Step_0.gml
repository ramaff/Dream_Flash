scr_Bullet_Soul_Home(rspeed);

scr_Soul_Push_Pull(2);

speed -= speed / 90;
if speed < bulletspeed * 0.25 {
	speed = bulletspeed * 0.25;	
}