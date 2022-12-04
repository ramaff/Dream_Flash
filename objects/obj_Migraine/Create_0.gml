boost = global.boost;
champ = global.champ;

bossValue = 39;
scr_Boss_Stats_Setup();

dir = 0;

scr_Boss_Size_Setup(0.5);

bossHeight = 35;
y -= bossHeight;

image_index = 0;

//bossSavedPos = [0, 0]
bossSavedX = x;
bossSavedY = y;
bossSavedDistance = 0;