boost = global.boost;
champ = global.champ;

bossValue = 161;

scr_Boss_Stats_Setup();
scr_Boss_Size_Setup(0.5);

image_speed = 0;
image_index = 0;

followtarget = obj_Dream_Crawler;
tail = false;

bossActiveAttackCooldown[1] = 60 + random(120);

alarm[3] = 60;