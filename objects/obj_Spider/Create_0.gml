bossmaxhealth = 25;
bosshealth = 25;
bosspower = 5;
bossbulletspeed = 2;
bossmovespeed = 1;
bossattackspeed = 1;
bossaccuracy = 1;

alarm[0] = 60 + irandom(15);

image_speed = 0;
image_index = 0;

var fast = bossmovespeed * (1 + random(1));
direction = random(360);
	
speed = fast;

image_xscale = 0.25;
image_yscale = 0.25;