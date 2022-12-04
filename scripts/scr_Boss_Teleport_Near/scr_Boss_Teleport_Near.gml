function scr_Boss_Teleport_Near(min_dist = 150, max_dist = 200) {
	var xv = room_width / 2;
	var yv = room_height / 2;

	potx = xv - ((global.roomSizeX - 128) / 2) + random(global.roomSizeX - 128);
	poty = yv - ((global.roomSizeY - 128) / 2) + random(global.roomSizeY - 128);

	var xval = potx - xv;
	var yval = poty - yv;
	var inside = 0;
	away = 0;
	var port = 0;
	close = 0;


	if abs(xval) < (((global.roomSizeX - 128) / 2) - abs(yval)) and abs(yval) < (((global.roomSizeY - 128) / 2) - abs(xval)) {
	    inside = 1;
	}

	with obj_Soul_Parent {
	    if point_distance(perX, perY, other.potx, other.poty) > min_dist {
	        other.away = 1;
	    }
	    if point_distance(perX, perY, other.potx, other.poty) < max_dist {
	        other.close = 1;
	    }
	}

	if distance_to_point(other.potx, other.poty) > 75 {
	    port = 1;
	} else {
	    port = 0;
	}

	if inside = 1 and away = 1 and close = 1 and port = 1 {
	    x = potx;
	    y = poty;
	} else {
	    scr_Boss_Teleport_Near(min_dist, max_dist + 5);
	}



}
