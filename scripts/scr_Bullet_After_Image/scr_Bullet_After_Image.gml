function scr_Bullet_After_Image() {
	with instance_create(x,y,obj_After_Image_Shot) {
	    sprite_index = other.sprite_index;
	    image_angle = other.image_angle;
	    image_index = other.image_index;
	    image_xscale = other.image_xscale * 0.75;
	    image_yscale = other.image_yscale * 0.75;
		image_alpha = other.image_alpha * 0.75;
		image_speed = 0;
	    alarm[0] = 33;
	}



}
