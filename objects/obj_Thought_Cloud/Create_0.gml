boost = global.boost;
champ = global.champ;

bossValue = 5;
scr_Boss_Stats_Setup();

//alarm[0] = 90 / bossattackspeed;
//alarm[2] = 15 / bossattackspeed;

scr_Boss_Size_Setup(0.5);

dir = 0;

image_speed = 0;
image_index = 0;

bossHeight = 35;
y -= bossHeight;

//utime = 0;

for(i = 0; i <= 3; i++) {
	updown[i] = bossHeight + i;	
}
for(i = 0; i <= 6; i++) {
	updown[i+3] = bossHeight + 3 - i;	
}
for(i = 0; i <= 3; i++) {
	updown[i+9] = bossHeight - 3 + i;	
}

updowntick = 0;