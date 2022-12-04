function scr_Boss_Summon() {
	bossform = obj_Wall_Watcher;

	bossform = argument[0];
	bossChamp = argument[1];
	bossBoost = argument[2];
	bossDifficulty = argument[3];
	
	morph = argument[4];

	global.champ = bossChamp;
	global.boost = bossBoost;

	numBoss = 1;

	if bossform = obj_Crazy_Eye || bossform = obj_Cursed_Clapper {
	    numBoss = 2; 
	}

	bossOrder = 1;

	//if morph = 0 {
		repeat(numBoss) {
		    with (instance_create(room_width/2,room_height/2,bossform)) {
		            difficulty = other.bossDifficulty;
		            champ = other.bossChamp;
		            boost = other.bossBoost;   
		            bossNum = other.bossOrder;
					//bossValue = global.bossval;
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
		    with (instance_create(room_width/2,room_height/2,bossform)) {
		            difficulty = other.bossDifficulty;
		            champ = other.bossChamp;
		            boost = other.bossBoost;   
		            global.bosscount += 1;
		            bossNum = other.bossOrder;
		            other.bossOrder++;
					
					//bossValue = global.bossval;
					
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
	/*} else {
		repeat(numBoss) {
		    with (instance_create(room_width/2,room_height/2,obj_Boss_Overlay)) {
					alarm[0] = 120;
		            difficulty = other.bossDifficulty;
		            champ = other.bossChamp;
		            boost = other.bossBoost;   
		            bossNum = other.bossOrder;
					bossObj = other.bossform;
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
		    } 
		    if global.boost = 2
		    with (instance_create(room_width/2,room_height/2,obj_Boss_Overlay)) {
					alarm[0] = 120;
		            difficulty = other.bossDifficulty;
		            champ = other.bossChamp;
		            boost = other.bossBoost;   
		            global.bosscount += 1;
		            bossNum = other.bossOrder;
					bossObj = other.bossform;
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
		    } 
		}
	}
	*/
	global.bosscount += numBoss;





}
