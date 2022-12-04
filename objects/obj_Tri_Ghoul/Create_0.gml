boost = global.boost;
champ = global.champ;

bossValue = 19;
scr_Boss_Stats_Setup();

bossHandDirection = random(360);
bossPassiveAttackCooldown[1] = 0;
bossPassiveAttackDelay[1] = 0;

hand1HitID = noone;
hand1List = {}; //ds_list_create();
hand2HitID = noone;
hand2List = {}; //ds_list_create();
hand3HitID = noone;
hand3List = {}; //ds_list_create();

//alarm[0] = 90 / bossattackspeed;
//alarm[2] = 15 / bossattackspeed;

dir = 0;

//image_speed = 0;
image_index = 0;

eyeframe = 0;
handspawn = 0;

scr_Boss_Size_Setup(0.5);