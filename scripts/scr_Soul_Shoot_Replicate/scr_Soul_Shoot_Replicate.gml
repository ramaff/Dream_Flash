function scr_Soul_Shoot_Replicate() {
	with instance_create(x,y,bullet_type) {
	    scr_Bullet_Replicate_Properties();
	    move_towards_point(instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y, bulletspeed);
	}



}
