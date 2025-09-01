function scr_Light_Follow_Boss_AI() {
	

	if instance_exists(obj_Boss_Parent) {
		speed = 0;
		var dis = distance_to_object(obj_Boss_Parent);
		if instance_exists(instance_nearest(x,y,obj_Boss_Parent)) {
		    if dis > 120 {
				minmovedir = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);
				x += lengthdir_x(smovementspeed * 3, minmovedir);
				y += lengthdir_y(smovementspeed * 3, minmovedir);
			} else {
		        minmovedir = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x, instance_nearest(x,y,obj_Boss_Parent).y);
				x += lengthdir_x(smovementspeed * (dis / 120), minmovedir);
				y += lengthdir_y(smovementspeed * (dis / 120), minmovedir);
			}
		}
	} else {

		scr_Minion_Follow_Leader();
	}


	scr_U04();


}
