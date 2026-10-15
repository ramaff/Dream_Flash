function scr_Boss_Teleport_Near_Return() {
	var xv = room_width / 2;
	var yv = room_height / 2;
	
	var roomSizeOff = 384;


	var potx = obj_Soul_Parent.x - 150 + random(300);
	var poty = obj_Soul_Parent.y - 150 + random(300);

	var xval = potx - xv;
	var yval = poty - yv;
	var inside = 1;
	var away = 0;
	var port = 0;
	var close = 0;

	var potdis = distance_to_point(potx, poty);
	if point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y) < potdis and potdis > 75 {
		port = 1;	
	} else {
	    port = 0;
	}

	if port = 1 {
	    return [potx, poty];
	} else {
	    return scr_Boss_Teleport_Near_Return();
	}

}
