function scr_Boss_Teleport_v2_Return(_border_offset = -128, _near_soul = -1) {
	
	///////////////// Infinite Setup ///////////////////////////////
	
	// center of each playable field
	var _x_center = room_width / 2;
	var _y_center = room_height / 2;
	
	var _diamond_bound = (global.roomSizeX + _border_offset)
	
	var _potx = _x_center - (_diamond_bound / 2) + random(_diamond_bound);
	var _poty = _y_center - (_diamond_bound / 2) + random(_diamond_bound);

	// x and y positions relative to the center of the room
	var _x_pos = _potx - _x_center;
	var _y_pos = _poty - _y_center;
	
	// half the room width/height (so the distance from the center to the corner)
	var _room_half_size = (global.roomSizeX / 2)
	
	///////////////// Teleport Condition Checks ///////////////////////////////
	
	var _inside = false
	var _soul_away = false
	var _og_away = false
	
	// Check if _inside the room diamond or not
	if (abs(_x_pos) + abs(_y_pos)) < _room_half_size {
	    _inside = true;
	}


	if _near_soul >= -1 {
		with obj_Soul_Parent {
			var _pdist = point_distance(perX, perY, _potx, _poty)
		    if _pdist > _near_soul and _pdist < (_near_soul + 200) {
		        _soul_away = 1
		    }
		}
	} else {
		with obj_Soul_Parent {
		    if point_distance(perX, perY, _potx, _poty) > 150 {
		        _soul_away = 1
		    }
		}
	}

	if distance_to_point(_potx, _poty) > 100 {
	    _og_away = 1;
	} 

	if _inside = 0 || _soul_away = 0 || _og_away = 0 {
	    return scr_Boss_Teleport_v2_Return(_border_offset + 32, _soul_away, _og_away);
	} else {
	    return [_potx, _poty];
	}

}
