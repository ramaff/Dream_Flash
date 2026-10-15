function scr_Boss_Summon(bossform = BOSS_TYPE.WALL_WATCHER,bossChamp,bossBoost,bossDifficulty) {
	bossform = BOSS_TYPE.WALL_WATCHER;

	global.champ = bossChamp;
	global.boost = bossBoost;
    
    bossform = scr_Get_Boss_Object(bossform)

	numBoss = 1;

	if bossform = obj_Crazy_Eye || bossform = obj_Cursed_Clapper {
	    numBoss = 2; 
	}

	bossOrder = 1;

    repeat(numBoss) {
        with (instance_create_depth(room_width/2,room_height/2,0,bossform)) {
                difficulty = bossDifficulty;
                champ = bossChamp;
                boost = bossBoost;   
                bossNum = other.bossOrder;
                other.bossOrder++;
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
                init_path_position = path_position;
        } 
        if global.boost = 2
        with (instance_create_depth(room_width/2,room_height/2,0,bossform)) {
                difficulty = bossDifficulty;
                champ = bossChamp;
                boost = bossBoost;   
                global.bosscount += 1;
                bossNum = other.bossOrder;
                other.bossOrder++;
                
                path_position = 0.75;
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
                init_path_position = path_position;
        } 
    }

	global.bosscount += numBoss;
}
