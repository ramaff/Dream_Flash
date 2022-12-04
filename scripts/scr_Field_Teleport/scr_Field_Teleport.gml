function scr_Field_Teleport() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	potx = xv - ((global.roomSizeX - 16) / 2) + random(global.roomSizeX - 16);
	poty = yv - ((global.roomSizeY - 16) / 2) + random(global.roomSizeY - 16);

	var xval = potx - xv;
	var yval = poty - yv;
	var inside = 0;
	away = 0;
	var port = 0;


	if abs(xval) < (((global.roomSizeX - 16) / 2) - abs(yval)) and abs(yval) < (((global.roomSizeY - 16) / 2) - abs(xval)) {
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

	if inside = 0 || away = 0 || port = 0 {
	    scr_Field_Teleport();
	} else {
	    x = potx;
	    y = poty;
	}



}
