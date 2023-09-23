function scr_Mega_Map() {
	xOrigin = (/*camcon.window_scale * camcon.view_zoom * */(camera_get_view_width(view) / 2));
	yOrigin = (/*camcon.window_scale * camcon.view_zoom * */(camera_get_view_height(view) / 2));
	mapXOrigin = global.floor[global.currentroom,1];
	mapYOrigin = global.floor[global.currentroom,2];
	
	//Print_DF(string(object_get_name(object_index)), 8);

	//draw_sprite(spr_Mini_Map,0,xOrigin,yOrigin);

	//draw_sprite(spr_Mini_Map_Square,1,xOrigin,yOrigin);

	for(i = 0; i <= global.maxRooms; i++) {
	    mapXOffset = mapXOrigin - global.floor[i,1];
	    mapYOffset = mapYOrigin - global.floor[i,2];
    
	    xx = (mapXOffset * 32) - (mapYOffset * 32)
	    yy = (mapXOffset * 32) + (mapYOffset * 32)
    
	    if (abs(mapXOffset) < 10) and (abs(mapYOffset) < 10) {
			
			with instance_create(xOrigin + xx, yOrigin + yy, obj_Map_Button) {
				mapRoom = other.i;	
				mapRoomType = global.floor[other.i,0];
				mapRoomX = global.floor[other.i,1];
				mapRoomY = global.floor[other.i,2];
			}
	    }
	}



}
