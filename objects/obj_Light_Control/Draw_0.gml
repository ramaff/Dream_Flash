
if surface_exists(surf) {
	
	if global.currentchapter = 1 {
		flash_color = make_color_rgb(150,200,255);	
	} else if global.currentchapter = 2 {
		flash_color = make_color_rgb(255,150,200);	
	} else if global.currentchapter = 3 {
		flash_color = make_color_rgb(205,150,255);	
	} else {
		flash_color = make_color_rgb(205,150,255);	
	}

    var _room_environment = global.floor[global.currentroom,4];
    
    global.roomdarkness = 0.025 * global.currentchapter;
	
	if _room_environment = spr_flash_marble_g || _room_environment = spr_flash_diagonal_brick_g || _room_environment = spr_feel_marble_g {
		global.roomdarkness += 0.025;
	}
    
    var _darkness = global.roomdarkness;

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
	
	var _cam_x = camera_get_view_x(view)
	var _cam_y = camera_get_view_y(view)
    
	var xxx = surfscale - _cam_x;
	var yyy = surfscale - _cam_y;
	
	// 1st pass
	
	surface_set_target(surf2);
	gpu_set_blendmode(bm_subtract)
	draw_clear(flash_color)
    gpu_set_blendmode(bm_normal)
    surface_reset_target();
    draw_surface_ext(surf2,_cam_x, _cam_y,1/surfscale,1/surfscale,0,c_white,_darkness);
	
	// 2nd pass
	
    surface_set_target(surf);
    
    //draw_clear(flash_color);
    draw_clear(black_color);
	
	//draw_set_blend_mode(bm_src_color);
	
	//gpu_set_blendmode(bm_add)
	gpu_set_blendmode(bm_subtract)
	
	var _scale = surfscale
	//var _flash_color = flash_color
	
    with(obj_LightS) {
		var _lsize = lightsize * _scale
        draw_sprite_ext(spr_Light,0,x + xxx,y + yyy, _lsize, _lsize,0,c_white,lightstrength);
    }
	
    gpu_set_blendmode(bm_normal)
	
    surface_reset_target();
    //draw_surface_ext(surf,x,y,1/surfscale,1/surfscale,0,c_white,_darkness);
	//shader_set(shd_Bloom_Pot);
    draw_surface_ext(surf,_cam_x, _cam_y,1/surfscale,1/surfscale,0,c_white,_darkness);
	

}

