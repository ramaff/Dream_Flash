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
		scr_Soul_Level_Up_Threshold_Set();
		
		if array_length(global.soul_field_queue) > 0 {
			var _field = global.soul_field_queue[array_length(global.soul_field_queue) - 1];
			
			array_delete(global.soul_field_queue, array_length(global.soul_field_queue) - 1, 1)
			
			switch(_field) {
				case "Despair":
					global.souldespair += 8;
					break;
				case "Paranoia":
					global.soulparanoia += 8;
					break;
				case "Loathing":
					global.soulloathing += 8;
					break;
				case "Assurance":
					global.soulassurance += 8;
					break;
				case "Bliss":
					global.soulbliss += 8;
					break;
				case "Hope":
					global.soulhope += 8;
					break;
				case "Strength":
					global.soulstrength += 8;
					break;
				case "Vitality":
					global.soulvitality += 8;
					break;
				case "Essence":
					global.soulessence += 8;
					break;
				case "Dexterity":
					global.souldexterity += 8;
					break;
				case "Perception":
					global.soulperception += 8;
					break;
				case "State":
					global.soulstate += 8;
					break;
			}
		} else {
			global.soul_xp_threshold_mult = 1;
			scr_Soul_Level_Up_Threshold_Set()
			global.floor[global.currentroom,0] = "Emotion Field"
		}
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
