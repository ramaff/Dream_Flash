bossmaxhealth = 25;
bosshealth = 25;
bosspower = 5;
bossbulletspeed = 2;
bossmovespeed = 0.2;
bossattackspeed = 1;
bossaccuracy = 1;
champ = 0;

//alarm[0] = 60 + random(120);

//image_speed = 0;
image_index = 0;

var bsize = 0.5;
if champ = 1 {
	bsize = 0.4;	
}
scr_Boss_Size_Setup(bsize);
scr_Boss_Attack_Setup();
scr_Boss_Height_Setup(60);
y += 60;

setspeed = 2.5;