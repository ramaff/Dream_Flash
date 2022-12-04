function scr_Shoot_Split_Replicate() {
	    dir = -(bullet_spread * (bullet_count - 1) / 1);
	    repeat(bullet_count) {
	        with instance_create(x,y,bullet_type) {
	            scr_Bullet_Replicate_Properties();
	            direction = other.dir;
	        }
	        dir += bullet_spread;
	    }



}
