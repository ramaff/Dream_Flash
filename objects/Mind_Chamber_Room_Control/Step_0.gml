
if instance_number(obj_Item_Parent) = 0 and global.bosscount <= 1 and bossSpawn < 3 {
	
	global.bosscount = 1;
	global.bossval = 0;

	var difficulty = global.floor[global.currentroom,24];
	var boss = global.floor[global.currentroom,21];
	var champ = global.floor[global.currentroom,22];
	var boost = global.floor[global.currentroom,23];
	if bossSpawn = 1 {
		boss = global.floor[global.currentroom,28];
		champ = global.floor[global.currentroom,29];
		boost = global.floor[global.currentroom,30];
	}
	if bossSpawn = 2 {
		boss = global.floor[global.currentroom,31];
		champ = global.floor[global.currentroom,32];
		boost = global.floor[global.currentroom,33];
	}

	scr_Boss_Summon(boss,champ,boost,difficulty,0);
	
	bossSpawn += 1;

	
}


if global.bosscount <= 1 and (bossSpawn = 0 || bossSpawn = 3) {
	
	scr_Room_End();

	if instance_number(obj_Item_Parent) = 0 {
	    global.floor[global.currentroom,0] = "Normal"
	}
}

if bossSpawn > 0 and bossSpawn < 3 {
	if global.bosscount < 1 {
		global.bosscount = 1;
	}
}