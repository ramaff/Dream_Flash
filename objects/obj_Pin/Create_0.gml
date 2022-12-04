bossmaxhealth = 25;
bosshealth = 25;
bosspower = 5;
bossbulletspeed = 2;
bossmovespeed = 1;
bossattackspeed = 1;
bossaccuracy = 1;

alarm[0] = 10 / bossattackspeed;

image_speed = 0;
image_index = 0;

//image_angle = -15 + random(30);

scr_Boss_Teleport();

death = 0;

size = 0.5;
image_xscale = size;
image_yscale = size;

alarm[8] = 1;