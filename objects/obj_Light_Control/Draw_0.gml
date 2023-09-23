
if surface_exists(surf) {
	
	
	/*
	var sheight = surface_get_height(surf);
	 
	if (sheight != (540 / camcon.view_zoom)) {
		surface_resize(surf, 960 / camcon.view_zoom, 540 / camcon.view_zoom)
	}
	*/
	

    roomEnvironment = global.floor[global.currentroom,4];
    
    global.roomdarkness = -0.05;
	
	if roomEnvironment = bg_Dungeon_Tiles {
		global.roomdarkness = 0.05;	
	}
    
    if roomEnvironment = bg_Deep_Woods_Tiles || roomEnvironment = bg_Cave_Tiles || roomEnvironment = bg_Graveyard_Tiles {
        global.roomdarkness = 0.15;
    }
    
    if roomEnvironment = bg_Depths_Tiles {
        global.roomdarkness = 0.3;
    }
    
    darkness = global.roomdarkness + ((global.souldespair + global.souldespairTemp) / 100);
    
	if darkness > 1 {
		darkness = 1;	
	}
	if darkness < 0 {
		darkness = 0;	
	}

	if global.currentdarkness > 1 {
		global.currentdarkness = 1;	
	}
	if global.currentdarkness < 0 {
		global.currentdarkness = 0;	
	}
	
	global.currentdarkness = lerp(global.currentdarkness,darkness,0.05);
	
	darkness = global.currentdarkness + global.gamedarknessadd;
	
	if darkness > 1 {
		darkness = 1;	
	}
	if darkness < 0 {
		darkness = 0;	
	}
	
	//darkness = 0.5;
	
    surface_set_target(surf);
    
    draw_clear(c_black);
    
	var xxx = surfscale - camera_get_view_x(view);
	var yyy = surfscale - camera_get_view_y(view);
	
	draw_set_blend_mode(bm_src_color);
	
    with(obj_LightS) {
        draw_sprite_ext(spr_Light,0,x + xxx,y + yyy,lightsize * other.surfscale,lightsize * other.surfscale,0,c_white,1 * lightstrength);
    }
	
	draw_set_blend_mode(bm_normal);
    
    surface_reset_target();
    //draw_surface_ext(surf,x,y,1/surfscale,1/surfscale,0,c_white,darkness);
	//shader_set(shd_Bloom_Pot);
    draw_surface_ext(surf,camera_get_view_x(view),camera_get_view_y(view),1/surfscale,1/surfscale,0,c_white,darkness);
	//shader_reset();
}

