if alarm[0] > 10 {
	var dir = 45;
	var sfac = 0.8;
	repeat(3) {
		var tar = id;
		with instance_create(x,y,obj_Zig_Zag_Bullet) {
		    scr_Bullet_Replicate_Properties();
		    sprite_index = spr_Glowy_Yellow_Shot;
		    bulletsize = 0.5;
		    image_xscale = bulletsize;
		    image_yscale = bulletsize;
		    bulletspeed = other.bulletspeed;
		    bulletpower = global.stagedamage;
		    speed = bulletspeed;
		    direction = dir;
			tar = id;
		}
		repeat(2) {
			with instance_create(x,y,obj_Follow_The_Leader_Bullet) {
				scr_Bullet_Replicate_Properties();
				target = tar;
			    sprite_index = spr_Glowy_Yellow_Shot;
			    bulletsize = 0.5;
			    image_xscale = bulletsize;
			    image_yscale = bulletsize;
			    bulletspeed = other.bulletspeed;
			    bulletpower = global.stagedamage;
			    speed = bulletspeed;
			    direction = dir;
				tar = id;
			}
		}
		dir += 120;
	}
	alarm[1] = 80;

	scr_Screen_Shake(7,5);
}