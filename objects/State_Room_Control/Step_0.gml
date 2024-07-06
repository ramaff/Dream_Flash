
if instance_number(obj_Item_Parent) = 0 and global.bosscount <= 1 and bossSpawn < 1 {


	difficulty = global.floor[global.currentroom,24];
	if bossSpawn = 0 {
		boss = global.floor[global.currentroom,21];
		champ = global.floor[global.currentroom,22];
		boost = global.floor[global.currentroom,23];
	}
	/*
	if bossSpawn = 1 {
		boss = global.floor[global.currentroom,28];
		champ = global.floor[global.currentroom,29];
		boost = global.floor[global.currentroom,30];
	}
	if bossSpawn = 2 {
		boss = global.floor[global.currentroom,31];
		champ = global.floor[global.currentroom,32];
		boost = global.floor[globa*/

	scr_Boss_Summon(boss,champ,boost,difficulty,0);
	
	bossSpawn += 1;

	
}

/*
if global.bosscount <= 1 and (bossSpawn = 0 || bossSpawn = 1) {
	
	global.orbit[0] = 0;
    global.orbit[1] = 0;
    global.orbit[2] = 0;
    global.orbit[3] = 0;
    global.orbit[999] = -1000;
            
    for(j = 1; j <= 13; j++) {
        global.floor[global.currentroom,6 + j] = "00"; 
    }
        
    itemNumChoice = 2 + floor((10 + global.soulhope + random(100 + global.soulhope * 3)) / 100);
    itemNumPick = 1;
	global.floor[global.currentroom,0] = "State Field";
	/*
	if class = "Strength Field" {
		itemNumChoice += floor(random(50 + global.soulstrength * 3.75) / 100);
	}
	if class = "Vitality Field" {
		itemNumChoice += floor(random(50 + global.soulvitality * 3.75) / 100);
	}
	if class = "Essence Field" {
		itemNumChoice += floor(random(50 + global.soulessence * 3.75) / 100);
	}
	if class = "Dexterity Field" {
		itemNumChoice += floor(random(50 + global.souldexterity * 3.75) / 100);
	}
	if class = "Perception Field" {
		itemNumChoice += floor(random(50 + global.sou
    for(j = 1; j <= itemNumChoice; j++) {
		i = global.currentroom;
        //global.floor[global.currentroom,6+j] = scr_Class_Item_Choose(class,0);
    }
    //global.floor[global.currentroom,19] = scr_Stat_Up_Choose(class);
    field = global.floor[global.currentroom,0];
    for(i = 1; i <= 13; i++) {
        item[i] = global.floor[global.currentroom,6+i];
    }
            
    scr_Item_Spawn(field, item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10], item[11], item[12], item[13]);

}
*/

if global.bosscount < 1 and (/*bossSpawn = 0 ||*/ bossSpawn = 1) {
	
	scr_Room_End();
	
	if variable_struct_get(global.tutorial_progress, "state_tutorial") >= 5 {
		scr_Tutorial_Note_Spawn("channel_tutorial")
	}
	
	if fieldSpawn = 0 and global.soultransformedstate != "None" {
		
		scr_Boss_Beat();
		
		staChoose = 0;
        
        fieldSpawn = 1;

		
		if staChoose = 1 {
            //global.floor[global.currentroom,0] = "State Field"
        } else {
            global.floor[global.currentroom,0] = "Normal"
        }
		
        
        if global.floor[global.currentroom,0] = "Normal" {
        } else {
			
        }
        
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