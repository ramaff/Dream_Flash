boost = global.boost;
champ = global.champ;

bossValue = 50;

scr_Boss_Stats_Setup();

var si = (global.roomSizeX / 2) * sqrt(2) / (1750 - 50);

scr_Boss_Size_Setup(si);

x -= global.roomSizeX / 4;
y -= global.roomSizeY / 4;

drillCycle = 0;
bossHeight = 36;

eyeSpread = global.roomSizeX / 6;

//alarm[0] = 90 / bossattackspeed;
//alarm[1] = 180 / bossattackspeed;

