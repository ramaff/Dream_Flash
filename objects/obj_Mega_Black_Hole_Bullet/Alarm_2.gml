alt++;
var bulType = obj_Spin_Expand_Bullet;

if alt mod 2 = 1 {
	bulType = obj_Spin_Expand_Bullet_Alt;	
}

var dir = random(360);
	repeat(4) {
		dir += 30;
	    repeat(6) {
	        dir += 10;
	        with instance_create(x,y,bulType) {
	            scr_Bullet_Replicate_Properties();
				bulletlife = 300;
				alarm[0] = bulletlife;
			
				bpartlife = 20;
				bpartfrequency = 5;
			
	            sprite_index = spr_Glowy_Night_Shot;
	            bulletspeed = other.bulletspeed * 0.75;
	            bulletpower = other.bulletpower;
	            speed = bulletspeed;
	            direction = dir;
	        }
	    }
	}
alarm[2] = 60;