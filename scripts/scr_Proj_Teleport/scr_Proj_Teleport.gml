function scr_Proj_Teleport() {
	potx = 0 + random(room_width);
	poty = 0 + random(room_height);

	xval = potx - room_width / 2;
	yval = poty - room_height / 2;
	inside = 0;
	away = 0;
	port = 0;


	if abs(xval) < (global.roomSizeX - abs(yval)) and abs(yval) < (global.roomSizeY - abs(xval)) {
	    inside = 1;
	}

	with obj_Soul_Parent {
	    if distance_to_point(other.potx, other.poty) > 100 {
	        other.away = 1;
	    } else {
	        other.away = 0;
	    }
	}

	if distance_to_point(potx, poty) > 100 {
	    port = 1;
	} else {
	    port = 0;
	}

	if inside = 1 || away = 0 || port = 0 {
	    scr_Proj_Teleport();
	} else {
	    x = potx;
	    y = poty;
	}



}
