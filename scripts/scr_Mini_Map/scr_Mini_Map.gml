// Location: GUI COntroller

function scr_Mini_Map() {
	var xOrigin = camcon.window_scale * camcon.view_zoom * camera_get_view_width(view) - 64
	var yOrigin = 64;
	/*
	mapXOrigin = Floor_Layout_Control.Flash[global.currentroom,1];
	mapYOrigin = Floor_Layout_Control.Flash[global.currentroom,2];
	*/

	draw_sprite(spr_Mini_Map,0,xOrigin,yOrigin);

	draw_sprite(spr_Mini_Map_Square,1,xOrigin,yOrigin);
	
	var sprr = -1;
	var xx = 0;
	var yy = 0;
	
	var i,j;
	
	for(i = 0; i < 5; i++) {
		for(j = 0; j < 5; j++) {
			sprr = Floor_Layout_Control.miniMap[i,j];
			if sprr > -1 {
				xx = ((i - 2) * 10) - ((j - 2) * 10);
				yy = ((i - 2) * 10) + ((j - 2) * 10);
				draw_sprite(spr_Mini_Map_Square,sprr,xOrigin + xx,yOrigin + yy);
			}
		}
	}

	/*
	for(i = 0; i <= global.maxRooms; i++) {
	    mapXOffset = mapXOrigin - Floor_Layout_Control.Flash[i,1];
	    mapYOffset = mapYOrigin - Floor_Layout_Control.Flash[i,2];
    
	    xx = (mapXOffset * 10) - (mapYOffset * 10)
	    yy = (mapXOffset * 10) + (mapYOffset * 10)
    
	    if (abs(mapXOffset) < 3) and (abs(mapYOffset) < 3) {
	        if Floor_Layout_Control.Flash[i,0] = "Normal" || Floor_Layout_Control.Flash[i,0] = "Spawn" {
	            draw_sprite(spr_Mini_Map_Square,0,xOrigin + xx,yOrigin + yy);
	        } else if Floor_Layout_Control.Flash[i,0] = "Boss" {
	            draw_sprite(spr_Mini_Map_Square,2,xOrigin + xx,yOrigin + yy);
	        }  else if Floor_Layout_Control.Flash[i,0] = "Shop" {
	            draw_sprite(spr_Mini_Map_Square,5,xOrigin + xx,yOrigin + yy);
	        } else if Floor_Layout_Control.Flash[i,0] = "Super Boss" {
	            draw_sprite(spr_Mini_Map_Square,3,xOrigin + xx,yOrigin + yy);
	        } else {
	            draw_sprite(spr_Mini_Map_Square,4,xOrigin + xx,yOrigin + yy);
	        }
	    }
	}
	*/



}
