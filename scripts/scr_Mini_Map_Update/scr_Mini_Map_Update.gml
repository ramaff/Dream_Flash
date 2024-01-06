// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Room_Change_Actions

function scr_Mini_Map_Update(){
	var i,j;
	
	for (i = 0; i < 5; i++) {
		for (j = 0; j < 5; j++) {
			Floor_Layout_Control.miniMap[i,j] = -1;	
		}	
	}
	
	var mapXOrigin = global.floor[global.currentroom,1];
	var mapYOrigin = global.floor[global.currentroom,2];
	
	var mapXOffset, mapYOffset, xx, yy;

	for(i = 0; i <= global.maxRooms; i++) {
		//show_debug_message("mini map room: " + string(i))
	    mapXOffset = mapXOrigin - global.floor[i,1];
	    mapYOffset = mapYOrigin - global.floor[i,2];
    
	    xx = (mapXOffset * 10) - (mapYOffset * 10)
	    yy = (mapXOffset * 10) + (mapYOffset * 10)
    
	    if (abs(mapXOffset) < 3) and (abs(mapYOffset) < 3) {
	        if global.floor[i,0] = "Normal" || global.floor[i,0] = "Spawn" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 0;	
	        } else if global.floor[i,0] = "Boss" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 2;
	        }  else if global.floor[i,0] = "Shop" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 5;	
	        } else if global.floor[i,0] = "Super Boss" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 3;	
	        } else if global.floor[i,0] = "Chamber" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 6;	
	        } else if global.floor[i,0] = "State" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 7;	
	        } else {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 4;	
	        }
	    }
	}
}