// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Locations: scr_Boss_Item_Field
// scr_Room_Change_Actions

function scr_Emotion_Field_Spawn_Check(){
	//Print_DF(global.emoteFieldSpawn)
	
	/*if instance_exists(Chapter_Change_Control) and global.floor[global.currentroom,0] != "Spawn" {
		exit;	
	} */
	if instance_exists(obj_Item_Parent) {
		exit;	
	}
	
	// Check if leveling up
	// if the stat field queue is empty spawn an emotion field to fill the queue
	if global.soul_xp >= global.soul_xp_threshold and global.floor[global.currentroom,0] != "Super Boss" {
		//global.totalFieldSpawn++;
		//global.emoteFieldSpawn = (1 + round(global.totalFieldSpawn / 1.5));
		//global.emoteFieldSpawn += (1 + round(global.totalFieldSpawn / 1.75)) * max(1, (1 + ((global.totalFieldSpawn - 2) / 2)));
		//global.emoteFieldSpawn = 1;
		global.soul_level++;
		global.soul_xp -= global.soul_xp_threshold;
		global.soul_xp_threshold += 10;
		
		global.floor[global.currentroom,0] = "Emotion Field"
	} else {
		global.floor[global.currentroom,0] = "Normal"
	}
	
	if global.floor[global.currentroom,0] != "Emotion Field" and global.floor[global.currentroom,0] != "Normal" and global.floor[global.currentroom,0] != "Spawn" {
		scr_Stat_Field_Check();
	}
        
	if global.floor[global.currentroom,0] = "Normal" || global.floor[global.currentroom,0] = "Spawn" {
	    //instance_create(x,y,Normal_Room_Start_Control)
	} else {
		scr_Stat_Field_Spawn();
	}
}