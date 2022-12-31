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
	
	var mapXOrigin = Floor_Layout_Control.Flash[global.currentroom,1];
	var mapYOrigin = Floor_Layout_Control.Flash[global.currentroom,2];
	
	var mapXOffset, mapYOffset, xx, yy;

	for(i = 0; i <= global.maxRooms; i++) {
		//show_debug_message("mini map room: " + string(i))
	    mapXOffset = mapXOrigin - Floor_Layout_Control.Flash[i,1];
	    mapYOffset = mapYOrigin - Floor_Layout_Control.Flash[i,2];
    
	    xx = (mapXOffset * 10) - (mapYOffset * 10)
	    yy = (mapXOffset * 10) + (mapYOffset * 10)
    
	    if (abs(mapXOffset) < 3) and (abs(mapYOffset) < 3) {
	        if Floor_Layout_Control.Flash[i,0] = "Normal" || Floor_Layout_Control.Flash[i,0] = "Spawn" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 0;	
	            ///draw_sprite(spr_Mini_Map_Square,0,xOrigin + xx,yOrigin + yy);
	        } else if Floor_Layout_Control.Flash[i,0] = "Boss" {
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 2;
	            //draw_sprite(spr_Mini_Map_Square,2,xOrigin + xx,yOrigin + yy);
	        }  else if Floor_Layout_Control.Flash[i,0] = "Shop" {
	            //draw_sprite(spr_Mini_Map_Square,5,xOrigin + xx,yOrigin + yy);
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 5;	
	        } else if Floor_Layout_Control.Flash[i,0] = "Super Boss" {
	            //draw_sprite(spr_Mini_Map_Square,3,xOrigin + xx,yOrigin + yy);
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 3;	
	        } else if Floor_Layout_Control.Flash[i,0] = "Chamber" {
	            //draw_sprite(spr_Mini_Map_Square,3,xOrigin + xx,yOrigin + yy);
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 6;	
	        } else if Floor_Layout_Control.Flash[i,0] = "State" {
	            //draw_sprite(spr_Mini_Map_Square,3,xOrigin + xx,yOrigin + yy);
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 7;	
	        } else {
	            //draw_sprite(spr_Mini_Map_Square,4,xOrigin + xx,yOrigin + yy);
				Floor_Layout_Control.miniMap[mapXOffset + 2,mapYOffset + 2] = 4;	
	        }
	    }
	}
}