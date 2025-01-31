function scr_Aggressive_Follow_Boss_AI_No_Orbit() {
	minmovedir += -1 + random(2);

	//var ran = irandom(100);

	if instance_exists(obj_Boss_Parent) {
		speed = 0;
		var nboss = instance_nearest(x,y,obj_Boss_Parent)
		if instance_exists(nboss) {
			speed = 0;
			direction = 0;
			minmovedir = point_direction(x,y,nboss.x, nboss.y);
			var mamount = min(smovementspeed, point_distance(x,y,nboss.x, nboss.y));
			x += lengthdir_x(mamount, minmovedir);
			y += lengthdir_y(mamount, minmovedir);
		}
	} else {
		/*
	    if ran > 88
	    if distance_to_object(obj_Soul_Parent) > 150 {
			minmovedir = point_direction(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y);
	        //move_towards_point(instance_nearest(x,y,obj_Soul_Parent).x, instance_nearest(x,y,obj_Soul_Parent).y, smovementspeed)
		}
		if place_meeting(x,y,obj_The_Border) {
			minmovedir = point_direction(x + lengthdir_x(320 + smovementspeed * 2, minmovedir),y + lengthdir_y(320 + smovementspeed * 2, minmovedir),obj_Soul_Parent.x, obj_Soul_Parent.y);
		}
		x += lengthdir_x(smovementspeed, minmovedir);
		y += lengthdir_y(smovementspeed, minmovedir);
		*/
		scr_Minion_Follow_Leader();
	}

	//speed = 0;

	//scr_U04();


}
