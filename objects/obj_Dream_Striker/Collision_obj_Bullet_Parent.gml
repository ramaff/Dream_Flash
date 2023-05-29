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
	}*/
	repeat(4) {
		var ddir = direction - 270 + random(180);
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Bit, c_white, c_white, 1, 16 + random(8), ddir, 0, 0, image_xscale + random(0.1), 20 + random(10))
	}
	//var poww = other.shotshieldpower;
	//show_debug_message("bulletpower: " + string(bulletpower))
	if bulletpower <= other.shotpower {
		var xxx = x;
		var yyy = y;
		var shpower = other.shotpower
		with (obj_Soul_Parent) {
			scr_Baseball_Shot(xxx,yyy,shpower + 50);
			var dirrr = point_direction(x,y,xxx,yyy) + 180;
			var push = sqrt(max(1, shpower))
			x += lengthdir_x(push, dirrr)
			y += lengthdir_y(push, dirrr)
		}
		//other.shotshieldpower -= bulletpower;
		other.shotpower -= bulletpower / 2;
		instance_destroy();	
	} else {
		bulletpower -= other.shotpower;
		bulletsize = (bulletpower / bulletpowermax);
		with(other) {
			instance_destroy();	
		}
	}
	//instance_destroy();
}
