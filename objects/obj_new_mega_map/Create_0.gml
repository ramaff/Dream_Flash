map_surface = surface_create(1008,1008)

room_x = []
room_y = []
room_type = []
room_explorable = []
room_number = 0
room_mouse_on = -1
current_room = global.currentroom

room_on = -1
room_on_pos = [ global.floor[current_room][FLOOR_VALUES.X_POS],global.floor[current_room][FLOOR_VALUES.Y_POS] ]
room_side = [0,0]
        
room_data_update = function () {
	room_x = []
	room_y = []
	room_type = []
	room_explorable = []
	room_mouse_on = -1
	room_number = 0

    var _spacing = 48
    
    var _base_x = global.floor[current_room,1]
    var _base_y = global.floor[current_room,2]
    
    if room_on != -1{
        _base_x = global.floor[room_on,1]
        _base_y = global.floor[room_on,2]
    }
    
	for (var i = 0; i <= global.maxRooms; i++) {
        var _cx = global.floor[i,1]
        var _cy = global.floor[i,2]
		var _gx = _base_x - _cx
		var _gy = _base_y - _cy
		var _type = global.floor[i,0]
        var _visited = global.floor[i,FLOOR_VALUES.VISITED]
        
		room_x[i] = (_gx * _spacing) - (_gy * _spacing) + _base_x - _base_y
		room_y[i] = (_gx * _spacing) + (_gy * _spacing) + _base_x + _base_y
		room_type[i] = _type

        
		var _blocked = (_type == "Boss" || _type == "Super Boss" || _type == "State")
		room_explorable[i] = !_blocked and _visited

		room_number++
	}
}
        
map_surface_update = function (){
    surface_set_target(map_surface)
    
    draw_clear_alpha(c_white,0)
    
    for (var i = 0; i < room_number; i++) {
    	var _type = room_type[i]
        var _index = 0
        
        switch (_type) {
        	default: _index = 4 break;
            case "Normal": _index = 0 break;
            case "Spawn": _index = 0 break;
            case "Boss": _index = 2 break;
            case "Shop": _index = 5 break;
            case "Super Boss": _index = 3 break;
            case "Chamber": _index = 6 break;
            case "State": _index = 7 break;
        }
        
        if i = global.currentroom {
        	_index = 1
        }
        
        var _alpha = 1
        if global.floor[i][FLOOR_VALUES.VISITED] == 0{
            _alpha = 0.8
        }
        
        draw_sprite_ext(spr_Mega_Map_Square,_index,504+room_x[i],504+room_y[i],1.7,1.7,0,c_white,_alpha)
    }
    
    gpu_set_blendmode(bm_subtract)
    
    draw_sprite(spr_Mega_Map,1,0,0)
    
    gpu_set_blendmode(bm_normal)
    
    surface_reset_target()
}

room_data_update()
map_surface_update()