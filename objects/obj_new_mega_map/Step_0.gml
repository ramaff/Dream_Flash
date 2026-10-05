if !surface_exists(map_surface){
    map_surface = surface_create(1008,1008)
    map_surface_update()
}

if current_room != global.currentroom{
    room_data_update()
    map_surface_update()
}

room_mouse_on = -1

var winx = camcon.window_scale * camcon.view_zoom * camera_get_view_width(view)
var winy = camcon.window_scale * camcon.view_zoom * camera_get_view_height(view)

var _px = winx/2
var _py = winy/2

var _dist = 475

var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)
var _on_map = point_in_triangle( _mx,_my,_px,_py-_dist-2,_px,_py+_dist,_px+_dist,_py) || point_in_triangle( _mx,_my,_px,_py-_dist-2,_px,_py+_dist,_px-_dist,_py)

if _on_map{
    
    for (var i = 0; i < room_number; i++) {
        var _x = _px + room_x[i]
        var _y = _py + room_y[i]
        var _explorable = room_explorable[i]
        
        if _explorable and point_in_circle(_mx,_my,_x,_y,24) and scr_Negative_Room_Check() and global.currentroom != i{
            room_mouse_on = i
            if mouse_check_button_pressed(mb_left){
                scr_Change_Room_Map(i)
            }
        }
    }
    
}