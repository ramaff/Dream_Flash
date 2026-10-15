function scr_Boss_Teleport_From_Boss(min_dist_from_soul = 150, _edge_add = 256) {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var potx = xv - ((global.roomSizeX + _edge_add) / 2) + random(global.roomSizeX + _edge_add);
	var poty = yv - ((global.roomSizeY + _edge_add) / 2) + random(global.roomSizeY + _edge_add);

	var xval = potx - xv;
	var yval = poty - yv;
	var inside = 0;
	var away = 0;
	var port = 0;


	if abs(xval) < (((global.roomSizeX + _edge_add) / 2) - abs(yval)) and abs(yval) < (((global.roomSizeY + _edge_add) / 2) - abs(xval)) {
	    inside = 1;
	}

	with obj_Soul_Parent {
	    if point_distance(perX, perY, potx, poty) > min_dist_from_soul {
	        away = 1;
	    } else {
	        away = 0;
	    }
	}

	if away = 1 {
		with obj_Boss_Parent {
		    if distance_to_point(potx, poty) > 128 {
		        away = 1;
		    } else {
		        away = 0;
		    }
		}
	}

	if distance_to_point(potx, poty) > 100 {
	    port = 1;
	} else {
	    port = 0;
	}

	if inside = 0 || away = 0 || port = 0 {
	    scr_Boss_Teleport_From_Boss(min_dist_from_soul, _edge_add);
	} else {
	    x = potx;
	    y = poty;
	}



}
