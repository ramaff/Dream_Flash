boost = global.boost;
champ = global.champ;

bossValue = 4;
scr_Boss_Stats_Setup();

scr_Wall_Sweep_Path_Setup();

scr_Boss_Size_Setup(0.5);

bossHeight = 35;
y -= bossHeight;

beamAccel = 0.0015;
beamTurnSpeed = 0.125;

//alarm[0] = 90 / bossattackspeed;
//alarm[1] = 100 / bossattackspeed;

