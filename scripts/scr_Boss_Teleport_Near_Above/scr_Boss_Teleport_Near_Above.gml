function scr_Boss_Teleport_Near_Above() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	potx = xv - ((global.roomSizeX + 512) / 2) + random(global.roomSizeX + 512);
	poty = yv - ((global.roomSizeY + 512) / 2) + random(global.roomSizeY + 512);

	var xval = potx - xv;
	var yval = poty - yv;
	var inside = 0;
	var away = 0;
	var port = 0;
	var close = 0;

	var above = 0;


	//if abs(xval) < (((global.roomSizeX + 512) / 2) - abs(yval)) and abs(yval) < (((global.roomSizeY + 512) / 2) - abs(xval)) {
	//    inside = 1;
	//}

	with obj_Soul_Parent {
	    if point_distance(perX, perY, other.potx, other.poty) > 100 {
	        away = 1;
	    }
	    if point_distance(perX, perY, other.potx, other.poty) < 175 {
	        close = 1;
	    }
	}

	if distance_to_point(other.potx, other.poty) > 75 {
	    port = 1;
	} else {
	    port = 1;
	}

	if (poty + 40) < obj_Soul_Parent.perY and (potx - 40) < obj_Soul_Parent.perX {
		above = 1;	
	}

	if (away = 1 and close = 1 and port = 1 and above = 1) || tcount > 20 {
	    x = potx;
	    y = poty;
	} else {
		//tcount++;
	    scr_Boss_Teleport_Near_Above();
	}



}
