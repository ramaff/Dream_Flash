function scr_Aggressive_Follow_Boss_AI() {
	minmovedir += -1 + random(2);


	if instance_exists(obj_Boss_Parent) {
		if instance_exists(instance_nearest(x,y,obj_Boss_Parent)) {
			minmovedir = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);
			var dist = point_distance(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y)
			var mamount = min(smovementspeed, dist);
			if dist < 100 {
				mamount = mamount / 100;	
			}
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

	scr_U04();


}
