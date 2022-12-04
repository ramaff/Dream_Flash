boost = global.boost;
champ = global.champ;

bossValue = 41;
scr_Boss_Stats_Setup();

image_speed = 1;
image_index = 0;

scr_Boss_Size_Setup(0.5);

scr_Default_Attack_Settings();

coreCount = 1;
var mdir = 0;
repeat(4) {
    with instance_create(x,y, obj_Veil_Mask) {
        champ = other.champ + 0.1;
        boost = other.boost;
        coreNum = other.coreCount;
        other.coreCount++;
        global.bosscount += 1;
		direction = mdir;
		orbitangle = direction;
		speed = 2.75;
		
		scr_Boss_Stats_Setup();
		
		bossID = other.bossID;
    }
	mdir += 90;
}

image_alpha = 0;
mask_index = spr_Veil_Hitbox;

alarm[0] = 120;

startX = x;
startY = y;