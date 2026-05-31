// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Teleport_In_Room_Generic(_border_offset = -128) {

	///////////////// Infinite Setup ///////////////////////////////
	
	// center of each playable field
	var _x_center = room_width / 2;
	var _y_center = room_height / 2;
	
	var _diamond_bound = (global.roomSizeX + _border_offset)
	
	// half the room width/height (so the distance from the center to the corner)
	var _room_half_size = (_diamond_bound / 2)
	
	///////////////// Teleport Condition Checks ///////////////////////////////
	
	var _inside = false
	
	var _potx = _x_center - (_diamond_bound / 2) + random(_diamond_bound);
	var _poty = _y_center - (_diamond_bound / 2) + random(_diamond_bound);

	// x and y positions relative to the center of the room
	var _x_pos = _potx - _x_center;
	var _y_pos = _poty - _y_center;
	
	// Check if _inside the room diamond or not
	if (abs(_x_pos) + abs(_y_pos)) < _room_half_size {
	    _inside = true;
	}
	
	if _inside = false {
	    return scr_Teleport_In_Room_Generic(_border_offset);
	} else {
	    return [_potx, _poty];
	}

}