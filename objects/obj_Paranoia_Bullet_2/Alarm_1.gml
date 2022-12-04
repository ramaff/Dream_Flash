//bulletphase = 1;
bulletspeed = bulletspeed * (2.05 * random(0.75));
speed = bulletspeed;
direction = random(360);

if scr_Chance(8) {
	direction = scr_Soul_Point();	
}

alarm[1] = 90 + random(30);