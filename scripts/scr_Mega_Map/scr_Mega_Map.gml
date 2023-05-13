function scr_Mega_Map() {
	xOrigin = (/*camcon.window_scale * camcon.view_zoom * */(camera_get_view_width(view) / 2));
	yOrigin = (/*camcon.window_scale * camcon.view_zoom * */(camera_get_view_height(view) / 2));
	mapXOrigin = Floor_Layout_Control.Flash[global.currentroom,1];
	mapYOrigin = Floor_Layout_Control.Flash[global.currentroom,2];
	
	show_debug_message(string(object_get_name(object_index)));

	//draw_sprite(spr_Mini_Map,0,xOrigin,yOrigin);

	//draw_sprite(spr_Mini_Map_Square,1,xOrigin,yOrigin);

	for(i = 0; i <= global.maxRooms; i++) {
	    mapXOffset = mapXOrigin - Floor_Layout_Control.Flash[i,1];
	    mapYOffset = mapYOrigin - Floor_Layout_Control.Flash[i,2];
    
	    xx = (mapXOffset * 32) - (mapYOffset * 32)
	    yy = (mapXOffset * 32) + (mapYOffset * 32)
    
	    if (abs(mapXOffset) < 10) and (abs(mapYOffset) < 10) {
			
			with instance_create(xOrigin + xx, yOrigin + yy, obj_Map_Button) {
				mapRoom = other.i;	
				mapRoomType = Floor_Layout_Control.Flash[other.i,0];
				mapRoomX = Floor_Layout_Control.Flash[other.i,1];
				mapRoomY = Floor_Layout_Control.Flash[other.i,2];
			}
	    }
	}



}
