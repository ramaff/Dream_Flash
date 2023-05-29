// Location: GUI COntroller

function scr_Mini_Map() {
	var xOrigin = camcon.window_scale * camcon.view_zoom * camera_get_view_width(view) - 64
	var yOrigin = 64;

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





}
