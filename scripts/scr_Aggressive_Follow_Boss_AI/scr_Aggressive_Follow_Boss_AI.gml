function scr_Aggressive_Follow_Boss_AI() {
	minmovedir += -1 + random(2);


	if instance_exists(obj_Boss_Parent) {
		speed = 0;
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
		
		scr_Minion_Follow_Leader();
	}

	scr_U04();


}
