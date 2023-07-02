function scr_Soul_Been_Hit() {

	if global.gameParticles > 0 {

		var num = (10 + irandom(3)) * global.gameParticles;

		repeat(num) {
			var dir = other.direction - 30 + random(60);
			if other.speed = 0 {
				dir = random(360);	
			}
			var spd = 5 + random(10);
		
			var xx = random(64) - (64 / 2);
			var yy = random(64) - (64 / 2);
	
			with instance_create(x + xx,y + yy,obj_Weapon_Trail) {
		
				sprite_index = spr_Soul_Big_Bit;
		
				image_angle = other.image_angle;
				depth = other.depth - 1;
		
				image_blend = c_white;

				size = 0.8 + random(0.3);
				image_xscale = size;
				image_yscale = size;
		
				life = 15 + irandom(15);
				speed = spd;
				direction = dir;
			
				alarm[0] = life;

			}
		}
	}




}
