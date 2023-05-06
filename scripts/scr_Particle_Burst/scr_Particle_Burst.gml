// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Particle_Burst(particletype = obj_Weapon_Trail, particlesprite = spr_Soul_Big_Bit, particlecolor1 = c_white, particlecolor2 = c_white, burstcount = 0, burstspeed = 10, burstdir = 0, burstspread = 360, particleArea = 0, partSize = 0.5, partLife = 10, burstUniformSpread = false){
	if global.gameParticles > 0 {
		repeat(burstcount) {
		
			var xx = random(particleArea) - (particleArea / 2);
			var yy = random(particleArea) - (particleArea / 2);
	
			with instance_create(x + xx,y + yy, particletype) {
				
				if burstUniformSpread {
					direction = burstdir;
					burstdir += burstspread;
				} else {
					direction = burstdir - (burstspread / 2) + random(burstspread);
				}
				
				speed = (burstspeed / 4) + random(3 * burstspeed / 4);
				
				//Print_DF("part sprite: " + string(sprite_get_name(particlesprite)))
				
				sprite_index = particlesprite;
		
				image_angle = other.image_angle;
				
				if particletype = obj_Pointy_Part {
					image_angle = direction;	
				}
				
				depth = other.depth + 5;
		
				image_blend = merge_colour(particlecolor1, particlecolor2, random(1));

				size = partSize;
				image_xscale = size;
				image_yscale = size;
		
				life = partLife;
				alarm[0] = life;
			}	
		}
	}
}