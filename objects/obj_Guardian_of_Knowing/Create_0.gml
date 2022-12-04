boost = global.boost;
champ = global.champ;

bossValue = 22;
scr_Boss_Stats_Setup();

bossattack = 0;

dir = 0;
bossPhase = 0;

bossBallDirection = random(360);
bossPassiveAttackCooldown[1] = 0;
bossPassiveAttackDelay[1] = 0;

Ball1HitID = noone;
Ball1List = ds_list_create();

image_index = 0;

scr_Boss_Size_Setup(0.5);