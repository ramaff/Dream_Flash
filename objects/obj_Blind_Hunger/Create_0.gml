boost = global.boost;
champ = global.champ;

bossValue = 21;
scr_Boss_Stats_Setup();

//alarm[0] = 90 / bossattackspeed;

scr_Boss_Size_Setup(0.5);

bossPhase = 0;

if champ = 8 {
	bossPhase = 1;	
}

lunge = 0;
spin = 0;

//image_speed = 0;
image_index = 0;

