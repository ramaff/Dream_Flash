/// @description Insert description here
// You can write your code in this editor

evil = 0;
good = 0;

scr_Boss_Size_Setup(0.4 + random(0.1));

alarm[1] = 60;

scr_Boss_Height_Setup(40);

souldist = 0;

scr_Default_Figment_Stats();
scr_Soul_Stat_Refresh();
	
spower = 10;
sfirerate = 45;
spoweraddition = 0;
smovementspeed = 1.35;
sshotspeed = 10;
sshotspeedaddition = 0;
sshotknockback = 5;
sshotknockbackaddition = 0;

saccuracy = 1;

bosshealth = 200;