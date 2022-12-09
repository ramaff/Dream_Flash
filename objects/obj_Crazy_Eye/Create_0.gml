boost = global.boost;
champ = global.champ;

bossValue = 27;
scr_Boss_Stats_Setup();


scr_Boss_Size_Setup(0.5);

//image_speed = 0;

direction = 10 * irandom(36);
speed = 0.5;

bossPassiveAttackDelay[1] = 10;

bossEyeDirection = random(360);

scr_Boss_Height_Setup(70);

if champ = 8 {
	bossActiveAttackCooldown[1] = 60 + random(180);	
}