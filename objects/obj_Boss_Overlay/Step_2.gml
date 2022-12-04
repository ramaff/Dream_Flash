/// @description Insert description here
// You can write your code in this editor


if instance_exists(bossd) {
	with (bossd) {
		state = states.phasing;	
	}
	
	bossSprite = bossd.sprite_index;
	
	image_xscale = bossd.image_xscale;
	image_yscale = bossd.image_yscale;
			
	xxadd = (sprite_get_xoffset(bossSprite) - (sprite_get_width(bossSprite) / 2)) * image_xscale;
	yyadd = (sprite_get_yoffset(bossSprite) - (sprite_get_height(bossSprite) / 2)) * image_yscale;
	
	x = bossd.x// - xxadd;
	y = bossd.y// - yyadd; //- bossd.bossHeight;
	image_angle = bossd.image_angle;
	image_index = bossd.image_index;
	
	depth = bossd.depth - 100;
	
	/*
	if bossSprite = spr_Infatuation_Cloud {
		y = bossd.y - 10;
	}
	
	if bossSprite = spr_Thought_Cloud {
		y = bossd.y - 10;
	}
	*/
	
	if bossSprite = spr_Watcher_Wall {
		instance_destroy();
	}
	if bossSprite = spr_Deep_Watcher {
		instance_destroy();
	}
	if bossSprite = spr_Growing_Sorrows {
		instance_destroy();
	}
	if bossSprite = spr_Soaring_Sorrows {
		instance_destroy();
	}
	
	//bossd.y++;
}

