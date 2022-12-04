function scr_Boss_Teleport_Near_Return() {
	var xv = room_width / 2;
	var yv = room_height / 2;
	
	var roomSizeOff = 384;

	//var potx = xv - ((global.roomSizeX + roomSizeOff) / 2) + random(global.roomSizeX + roomSizeOff);
	//var poty = yv - ((global.roomSizeY + roomSizeOff) / 2) + random(global.roomSizeY + roomSizeOff);

	var potx = obj_Soul_Parent.x - 150 + random(300);
	var poty = obj_Soul_Parent.y - 150 + random(300);

	var xval = potx - xv;
	var yval = poty - yv;
	var inside = 0;
	var away = 0;
	var port = 0;
	var close = 0;


	//if abs(xval) < (((global.roomSizeX + roomSizeOff) / 2) - abs(yval)) and abs(yval) < (((global.roomSizeY + roomSizeOff) / 2) - abs(xval)) {
	    inside = 1;
	//}

	/*
	with obj_Soul_Parent {
	    if point_distance(perX, perY, potx, poty) > 133 {
	        away = 1;
	    }
	    if point_distance(perX, perY, potx, poty) < 250 {
	        close = 1;
	    }
	} */

	var potdis = distance_to_point(potx, poty);
	if point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y) < potdis and potdis > 75 {
		port = 1;	
	} else {
	    port = 0;
	}

	if /*inside = 1 and away = 1 and close = 1 and*/ port = 1 {
	    return [potx, poty];
	} else {
	    return scr_Boss_Teleport_Near_Return();
	}



}
