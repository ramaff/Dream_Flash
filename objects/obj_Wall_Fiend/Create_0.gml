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

size = 0.5 + random(0.05);
image_xscale = size;
image_yscale = size;

alarm[8] = 1;

projectile_hit_id = noone;
                projectile_hits = ds_list_create();
                bossID = id;
				minionbossparent = other.id;
                bossNum = 0;
                pathBoss = 0;