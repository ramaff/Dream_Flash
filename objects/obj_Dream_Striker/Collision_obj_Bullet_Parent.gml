/// @description Insert description here
// You can write your code in this editor

with(other) {
	repeat(4) {
		var ddir = direction - 270 + random(180);
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Bit, c_white, c_white, 1, 16 + random(8), ddir, 0, 0, image_xscale + random(0.1), 20 + random(10))
	}
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
