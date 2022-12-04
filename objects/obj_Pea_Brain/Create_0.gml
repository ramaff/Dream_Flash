bossmaxhealth = 25;
bosshealth = 25;
bosspower = 5;
bossbulletspeed = 2;
bossmovespeed = 0.2;
bossattackspeed = 1;
bossaccuracy = 1;

//alarm[0] = (180 + random(60)) / bossattackspeed;

image_index = 0;

scr_Boss_Size_Setup(0.5);
scr_Boss_Attack_Setup();

speed = bossmovespeed;
bossActiveAttackCooldown[1] = 10;

orbitheight = 100;
orbitheighttarget = 2000;
orbitangle = direction;