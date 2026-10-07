if surface_exists(map_surface){
    var winx = camcon.window_scale * camcon.view_zoom * camera_get_view_width(view)
    var winy = camcon.window_scale * camcon.view_zoom * camera_get_view_height(view)
    
    var _px = winx/2 - 504
    var _py = winy/2 - 504
    
    draw_sprite(spr_Mega_Map,0,_px,_py)
    draw_surface(map_surface,_px,_py)
    
    if room_mouse_on != -1 and room_on == -1{
        var _x = winx/2 + room_x[room_mouse_on]
        var _y = winy/2 + room_y[room_mouse_on]
        
        draw_sprite_ext(spr_Mega_Map_Selection_Arrow,0,_x,_y-27+scr_Wave(-16,2,1,0),1.7,1.7,0,c_white,1)
    }
    
    if room_on != -1{
        var _x = winx/2 //+ room_side[0]*48 //+ room_x[room_on]
        var _y = winy/2 //+ room_side[1]*48 //+ room_y[room_on]
        
        draw_sprite_ext(spr_Mega_Map_Selection_Arrow,0,_x,_y-27+scr_Wave(-16,2,1,0),1.7,1.7,0,c_white,1)
    }
    
}

