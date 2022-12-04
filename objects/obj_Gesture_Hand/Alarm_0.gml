
direction = scr_Soul_Point();
speed = (3.5 + random(1.5)) * bossmovespeed * bossmovepercent;

direction += -45 + random(90);

bossmovepercent += 0.025;

if bossmovepercent > 1 {
	bossmovepercent = 1;	
}

alarm[0] = (10 + irandom(5)) / bossattackspeed;
