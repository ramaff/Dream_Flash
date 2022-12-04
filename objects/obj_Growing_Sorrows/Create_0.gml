boost = global.boost;
champ = global.champ;

bossValue = 3;

scr_Boss_Size_Setup(0.5);

tearCycle = 0;

scr_Boss_Stats_Setup();

sweepPos = 0;
sweepSpeed = bossmovespeed;	

bossActiveAttackCooldown[1] = 80 / bossattackspeed;

bossHeight = 36;
y -= bossHeight;

idleHeight = [50, 40, 75, 85, 85, 75, 60];
attackHeight = [50, 45, 42, 40, 40, 40, 70, 85, 80, 72];
oldHeight = 36;

speed = 0;