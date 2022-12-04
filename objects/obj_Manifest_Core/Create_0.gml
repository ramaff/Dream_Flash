boost = global.boost;
champ = global.champ;

bossValue = 20;
scr_Boss_Stats_Setup();

coreCount = 1;
repeat(4) {
    with instance_create(x,y, obj_Manifest_Orbital) {
        champ = other.champ + 0.1;
		bossValue = other.bossValue;
        boost = other.boost;
        coreNum = other.coreCount;
        bossID = other.bossID;
        other.coreCount++;
        global.bosscount += 1;
		
		scr_Boss_Stats_Setup()
		
		bossID = other.bossID;
    }
}

var cextra = 4;

if boost = 2 {
	cextra = 3;	
}

if champ = 2 {
    repeat(cextra) {
        with instance_create(x,y, obj_Manifest_Orbital) {
            champ = other.champ + 0.1;
            boost = other.boost;
			bossValue = other.bossValue;
            coreNum = other.coreCount;
            bossID = other.bossID;
            other.coreCount++;
            global.bosscount += 1;
			
			scr_Boss_Stats_Setup()
			
			bossID = other.bossID;
        }
    }
}
//image_speed = 0;
image_index = 0;

scr_Boss_Size_Setup(0.5);