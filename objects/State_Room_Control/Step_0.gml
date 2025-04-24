
if instance_number(obj_Item_Parent) = 0 and global.bosscount <= 1 and bossSpawn < 1 {


	var difficulty = global.floor[global.currentroom,24];
	var boss = global.floor[global.currentroom,21];
	var champ = global.floor[global.currentroom,22];
	var boost = global.floor[global.currentroom,23];

	scr_Boss_Summon(boss,champ,boost,difficulty,0);
	
	bossSpawn += 1;

	
}

if global.bosscount < 1 and (/*bossSpawn = 0 ||*/ bossSpawn = 1) {
	
	if !complete {
		scr_Room_End();
		complete = true;
	}
	
	if variable_struct_get(global.tutorial_progress, "state_tutorial") >= 5 {
		scr_Tutorial_Note_Spawn("channel_tutorial")
	}
	
	if fieldSpawn = 0 and global.soultransformedstate != "None" {
		
		scr_Boss_Beat();
        
        fieldSpawn = 1;
		
        global.floor[global.currentroom,0] = "Normal"
		
        
    } else {
	    if instance_number(obj_Item_Parent) = 0 {
	        global.floor[global.currentroom,0] = "Normal"
	    }
    }   

	if instance_number(obj_Item_Parent) = 0 {
	    global.floor[global.currentroom,0] = "Normal"
	}
}

if bossSpawn > 0 and bossSpawn < 1 {
	if global.bosscount < 1 {
		global.bosscount = 1;
	}
}