// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_T04(){

	if global.T[4] > 0 {
		
		var itemPick = "";
		
		global.orbit[0] = 0;
		global.orbit[1] = 0;
		global.orbit[2] = 0;
		global.orbit[3] = 0;
		global.orbit[999] = -1000;
            
		for(j = 1; j <= 13; j++) {
		    global.floor[global.currentroom,6 + j] = "00"; 
		}
        
		itemNumChoice = scr_Item_Field_Count(4)
	
		itemNumPick = 1;
		global.floor[global.currentroom,0] = "Hyper Field"
		for(j = 1; j <= itemNumChoice; j++) {
		    global.floor[global.currentroom,6+j] = global.items[irandom(array_length(global.items) - 1)]
		}
		for(i = 1; i <= 13; i++) {
		    item[i] = global.floor[global.currentroom,6+i];
		}

		scr_Item_Spawn(global.floor[global.currentroom,0], item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10], item[11], item[12], item[13]);
	
		global.T[4]--;
	}

}