boost = global.boost;
champ = global.champ;

bossValue = 47;

scr_Boss_Stats_Setup();

//alarm[0] = 90 / bossattackspeed;

iang = 0;

aAngle = 0;

with instance_create(x,y, obj_Chasing_Twin_Horror) {
    champ = other.champ + 0.1;
    boost = other.boost;
    bossID = other.bossID;
	bossValue = other.bossValue;
    global.bosscount += 1;
	
	scr_Boss_Stats_Setup();
}

scr_Boss_Size_Setup(0.5);

//image_speed = 0;
image_index = 0;

