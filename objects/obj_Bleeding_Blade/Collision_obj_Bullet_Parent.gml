/// @description Insert description here
// You can write your code in this editor

with(other) {
	/*var ddir = random(360);
	var sspd = 9 + random(4);
	var ssize = 0.4 + random(0.2);
	var llife = 10 + irandom(2);
	repeat(8) {
		with instance_create(x,y,obj_Item_Trail) {
			direction = ddir;
			speed = sspd;
						
			sprite_index = spr_Soul_Big_Bit;

			size = ssize
			image_xscale = size;
			image_yscale = size;
		
			life = llife;
			alarm[0] = life;
			alarm[1] = life / 2;
		
			depth = other.depth + 2;
		}
		ddir += 45;
	} */
	scr_Soul_Shot_Rebound_Parts();
	var poww = other.shotshieldpower;
	if bulletpower <= poww {
		var xxx = x;
		var yyy = y;
		//var shpower = other.shot_stats.Shot_Power
		with (obj_Soul_Parent) {
			scr_Bleeding_Shot(xxx,yyy,shpower);
		}
		//instance_destroy();	
	} else {
		//bulletpower -= poww;
		//bulletsize = (bulletpower / bulletpowermax);
	}
	scr_Bullet_Dampen(poww)
	//instance_destroy();
}
