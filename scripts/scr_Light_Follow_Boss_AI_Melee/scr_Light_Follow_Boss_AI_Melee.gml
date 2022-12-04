function scr_Light_Follow_Boss_AI_Melee() {
	minmovedir += -1 + random(2);

	var ran = irandom(100);

	if instance_exists(obj_Boss_Parent) {
		if instance_exists(instance_nearest(x,y,obj_Boss_Parent)) {
		    if distance_to_object(obj_Boss_Parent) > 60 {
				minmovedir = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);
				x += lengthdir_x(smovementspeed, minmovedir);
				y += lengthdir_y(smovementspeed, minmovedir);
			} else {
		        minmovedir = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);
				x += lengthdir_x(smovementspeed / 10, minmovedir);
				y += lengthdir_y(smovementspeed / 10, minmovedir);
			}
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
