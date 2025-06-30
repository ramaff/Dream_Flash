
if surface_exists(surf) {

    var _room_environment = global.floor[global.currentroom,4];
    
    global.roomdarkness = 0.1;
	
	if _room_environment = spr_flash_marble_brick_g || _room_environment = spr_flash_diagonal_brick_g {
		global.roomdarkness = 0.2;	
	}
    
    var _darkness = global.roomdarkness + ((global.souldespair + global.souldespairTemp) / 100);
    
	if _darkness > 1 {
		_darkness = 1;	
	}
	if _darkness < 0 {
		_darkness = 0;	
	}

	if global.currentdarkness > 1 {
		global.currentdarkness = 1;	
	}
	if global.currentdarkness < 0 {
		global.currentdarkness = 0;	
	}
	
	global.currentdarkness = lerp(global.currentdarkness,_darkness,0.05);
	
	_darkness = global.currentdarkness + global.gamedarknessadd;
	
	if _darkness > 1 {
		_darkness = 1;	
	}
	if _darkness < 0 {
		_darkness = 0;	
	}
	
	//_darkness = 0.5;
	
    surface_set_target(surf);
    
    draw_clear(flash_color);
	
	var _cam_x = camera_get_view_x(view)
	var _cam_y = camera_get_view_y(view)
    
	var xxx = surfscale - _cam_x;
	var yyy = surfscale - _cam_y;
	
	//draw_set_blend_mode(bm_src_color);
	draw_set_blend_mode(bm_add);
	
	var _scale = surfscale
	
    with(obj_LightS) {
		var _lsize = lightsize * _scale
        draw_sprite_ext(spr_Light,0,x + xxx,y + yyy, _lsize, _lsize,0,c_white,lightstrength);
    }
	
	draw_set_blend_mode(bm_normal);
    
    surface_reset_target();
    //draw_surface_ext(surf,x,y,1/surfscale,1/surfscale,0,c_white,_darkness);
	//shader_set(shd_Bloom_Pot);
    draw_surface_ext(surf,_cam_x, _cam_y,1/surfscale,1/surfscale,0,c_white,_darkness);
	//shader_reset();
}

