// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Stat_Field_Spawn_Check() {
	var itemPick = "";
		
	global.orbit[0] = 0;
	global.orbit[1] = 0;
	global.orbit[2] = 0;
	global.orbit[3] = 0;
	global.orbit[999] = -1000;
            
	for(j = 1; j <= 13; j++) {
	    Floor_Layout_Control.Flash[global.currentroom,6 + j] = "00"; 
	}
        
	itemNumChoice = 2 + floor((global.soulhope + random(100 + global.soulhope * 3)) / 100);
	
	var fr = frac(global.extraitems);
	itemNumChoice += global.extraitems - fr;
			
	if fr > 0 {
		if scr_Chance(1 / fr) {
			itemNumChoice += 1;
		}
	}
	
	itemNumPick = 1;
	var class = Floor_Layout_Control.Flash[global.currentroom,0];
	for(j = 1; j <= itemNumChoice; j++) {
		i = global.currentroom;
		if class = "Emotion Field" {
			itemPick = scr_Emotion_Item_Choose(class,0);
		} else {
			itemPick = scr_Class_Item_Choose(class,0);
		}
	    Floor_Layout_Control.Flash[global.currentroom,6+j] = itemPick;
	}
	//Floor_Layout_Control.Flash[global.currentroom,19] = scr_Stat_Up_Choose(class);
	field = Floor_Layout_Control.Flash[global.currentroom,0];
	for(i = 1; i <= 13; i++) {
	    item[i] = Floor_Layout_Control.Flash[global.currentroom,6+i];
	}
            
	if global.OA[5] > 0 and array_length(global.OA5rooms[global.currentroom]) = 0 {
		if scr_OA05_Current_Room_Add() {
			scr_OA05()
			exit;
		}
	} else if global.OA[5] > 0 and array_length(global.OA5rooms[global.currentroom]) > 0 {
		//scr_OA05();
		exit;	
	}

	scr_Item_Spawn(field, item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10], item[11], item[12], item[13]);
}