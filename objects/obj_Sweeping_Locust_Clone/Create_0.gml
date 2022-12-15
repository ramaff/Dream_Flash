bossmaxhealth = 25;
bosshealth = 25;
bosspower = 5;
bossbulletspeed = 2;
bossmovespeed = 0.2;
bossattackspeed = 1;
bossaccuracy = 1;

//alarm[0] = 60 + random(120);

//image_speed = 0;
image_index = 0;

scr_Boss_Size_Setup(0.5);
scr_Boss_Attack_Setup();

/*
var bossdirection = scr_Soul_Point();
	bossdashorientation = 0;
	if bossdirection > 90 and bossdirection <= 270 {
		bossdashorientation = -1;
		clamp(bossdirection,175,185);
		direction = 180 - 10 + random(20);
	} else {
		bossdashorientation = 1;
		clamp(bossdirection,355,5);
		direction = 0 - 10 + random(20);
	}
*/

setspeed = 2.5;