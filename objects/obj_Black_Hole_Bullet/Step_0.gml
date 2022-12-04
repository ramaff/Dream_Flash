

//speed = min(speed + 0.5,bulletspeed);

scr_Bullet_Soul_Home(rspeed);
scr_Soul_Push_Pull(1);

speed -= speed / 90;
if speed < bulletspeed * 0.1 {
	speed = bulletspeed * 0.1;	
}