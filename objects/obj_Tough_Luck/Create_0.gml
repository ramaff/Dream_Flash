boost = global.boost;
champ = global.champ;

bossValue = 45;
scr_Boss_Stats_Setup();

scr_Boss_Size_Setup(0.5);

attacking = 0;
bossScare = 0;

image_index = 0;

scr_Default_Attack_Settings();

bossHeight = 0;
y -= bossHeight;

bossSide = 1 + irandom(5);
bossSide2 = 1 + irandom(5);

while(bossSide2 = bossSide) {
	bossSide2 = 1 + irandom(5);
}