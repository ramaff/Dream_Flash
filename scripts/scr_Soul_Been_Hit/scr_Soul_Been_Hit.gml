function scr_Soul_Been_Hit() {


	//part_emitter_region(global.psystem,global.pemitter, x - 32, x + 32, y - 32, y + 32,ps_shape_diamond,ps_distr_linear);

	//part_type_color_mix(phittype, c_white, c_white);
	//part_type_sprite(phittype, spr_Soul_Big_Bit,0,0,0);
	//part_type_life(phittype, 15,30);

	if global.gameParticles > 0 {

		var num = (10 + irandom(3)) * global.gameParticles;

		repeat(num) {
			var dir = other.direction - 30 + random(60);
			if other.speed = 0 {
				dir = random(360);	
			}
			var spd = 5 + random(10);
			//part_type_direction(phittype,dir,dir,0,0);
			///part_type_speed(phittype,spd,spd/2,-0.5,0);

			//part_emitter_burst(global.psystem, global.pemitter, phittype, 1);
		
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

	/*
	repeat(4 + irandom(1)) {
	    with instance_create(x,y,obj_Soul_Bit) {
	        moveUp = 1;
	        sprite_index = spr_Soul_Bit;
	        size = 0.5 + random(0.5);
	        image_alpha = 1.05 + random(0.5);
	        image_xscale = size;
	        image_yscale = size;
	        speed = 1.35 + random(3.5);
	        if other.speed > 0.1 {
	            direction = other.direction - 30 + random(60);
	        } else {
	            direction = random(360);
	        }
	        alarm[0] = 10 + random(5);
	    }
	}
	repeat(4) {
	    with instance_create(x,y,obj_Soul_Bit) {
	        moveUp = 1;
	        sprite_index = spr_Soul_Bit;
	        size = 0.5 + random(0.5);
	        image_alpha = 1.05 + random(0.5);
	        image_xscale = size;
	        image_yscale = size;
	        speed = 3.75 + random(7.5);
	        if other.speed > 0.1 {
	            direction = other.direction - 30 + random(60);
	        } else {
	            direction = random(360);
	        }
	        alarm[0] = 10 + random(5);
	    }
	}
	*/



}
