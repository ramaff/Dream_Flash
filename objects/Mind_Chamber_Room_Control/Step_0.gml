
if instance_number(obj_Item_Parent) = 0 and global.bosscount <= 1 and bossSpawn < 3 {
	
	global.bosscount = 1;
	global.bossval = 0;

	difficulty = Floor_Layout_Control.Flash[global.currentroom,24];
	if bossSpawn = 0 {
		boss = Floor_Layout_Control.Flash[global.currentroom,21];
		champ = Floor_Layout_Control.Flash[global.currentroom,22];
		boost = Floor_Layout_Control.Flash[global.currentroom,23];
	}
	if bossSpawn = 1 {
		boss = Floor_Layout_Control.Flash[global.currentroom,28];
		champ = Floor_Layout_Control.Flash[global.currentroom,29];
		boost = Floor_Layout_Control.Flash[global.currentroom,30];
	}
	if bossSpawn = 2 {
		boss = Floor_Layout_Control.Flash[global.currentroom,31];
		champ = Floor_Layout_Control.Flash[global.currentroom,32];
		boost = Floor_Layout_Control.Flash[global.currentroom,33];
	}

	scr_Boss_Summon(boss,champ,boost,difficulty,0);
	
	bossSpawn += 1;

	
}


if global.bosscount <= 1 and (bossSpawn = 0 || bossSpawn = 3) {
	
	scr_Room_End();

	if instance_number(obj_Item_Parent) = 0 {
	    Floor_Layout_Control.Flash[global.currentroom,0] = "Normal"
	}
}

if bossSpawn > 0 and bossSpawn < 3 {
	if global.bosscount < 1 {
		global.bosscount = 1;
	}
}