// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Locations: scr_Boss_Item_Field
// scr_Room_Change_Actions

function scr_Emotion_Field_Spawn_Check(){
	//Print_DF(global.emoteFieldSpawn)
	
	if global.emoteFieldSpawn <= 0 {
		global.totalFieldSpawn++;
		//global.emoteFieldSpawn = (1 + round(global.totalFieldSpawn / 1.5));
		global.emoteFieldSpawn += (1 + round(global.totalFieldSpawn / 1.75)) * max(1, (1 + ((global.totalFieldSpawn - 2) / 2)));
		//global.emoteFieldSpawn = 1;
		Floor_Layout_Control.Flash[global.currentroom,0] = "Emotion Field"
	} else {
		Floor_Layout_Control.Flash[global.currentroom,0] = "Normal"
	}
	
	if Floor_Layout_Control.Flash[global.currentroom,0] != "Emotion Field" and Floor_Layout_Control.Flash[global.currentroom,0] != "Normal" {
		scr_Stat_Field_Check();
	}
        
	if Floor_Layout_Control.Flash[global.currentroom,0] = "Normal" {
	    //instance_create(x,y,Normal_Room_Start_Control)
	} else {
		scr_Stat_Field_Spawn_Check();
	}
}