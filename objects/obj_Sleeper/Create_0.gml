boost = global.boost;
champ = global.champ;

bossValue = 31;
scr_Boss_Stats_Setup();

if champ = 0 {
    with instance_create(x+66,y-99, obj_Manifestation) {
        champ = other.champ + 0.1;
        boost = other.boost;
        bossID = other.bossID;
        global.bosscount += 1;
		
		scr_Boss_Stats_Setup();
    }
}
if champ = 1 {
    with instance_create(x+66,y-99, obj_Wall_Manifestation) {
        champ = other.champ + 0.1;
        boost = other.boost;
        bossID = other.bossID;
        global.bosscount += 1;
		
		scr_Boss_Stats_Setup();
		
		if global.bosscount = 2 {

		    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd > 0 {
		        path_position = 0;
		    }
		    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd > 0 {
		        path_position = 0.75;
		    }
		    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd < 0 {
		        path_position = 0.25;
		    }
		    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd < 0 {
		        path_position = 0.5;
		    }
		    if global.boost = 2 {
		        path_position += 0.25
		    }

		} else {

		    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd > 0 {
		        path_position = 0.75;
		    }
		    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd > 0 {
		        path_position = 0.5;
		    }
		    if global.soulSpawnXAdd > 0 and global.soulSpawnYAdd < 0 {
		        path_position = 0;
		    }
		    if global.soulSpawnXAdd < 0 and global.soulSpawnYAdd < 0 {
		        path_position = 0.25;
		    }

		}
    }
}

scr_Boss_Size_Setup(0.5);

//image_speed = 0;
image_index = 0;

