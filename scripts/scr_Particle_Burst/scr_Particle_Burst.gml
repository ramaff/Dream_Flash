// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Particle_Burst(particletype = obj_Weapon_Trail, particlesprite = spr_Soul_Big_Bit, particlecolor1 = c_white, particlecolor2 = c_white, burstcount = 0, burstspeed = 10, burstdir = 0, burstspread = 360, particleArea = 0, partSize = 0.5, partLife = 10, burstUniformSpread = false, _xx = -999999, _yy = -999999, _part_angle = image_angle){
	if global.gameParticles > 0 {
		repeat(burstcount) {
		
			if _xx == -999999 {
				_xx = random(particleArea) - (particleArea / 2);
			}
			if _yy == -999999 {
				_yy = random(particleArea) - (particleArea / 2);
			}
	
			with instance_create(x + _xx,y + _yy, particletype) {
				
				if burstUniformSpread {
					direction = burstdir;
					burstdir += burstspread;
				} else {
					direction = burstdir - (burstspread / 2) + random(burstspread);
				}
				
				base_direction = direction
				
				speed = (burstspeed / 4) + random(3 * burstspeed / 4);
				
				//Print_DF("part sprite: " + string(sprite_get_name(particlesprite)))
				
				sprite_index = particlesprite;
		
				image_angle = _part_angle;
				
				if particletype = obj_Pointy_Part {
					image_angle = direction;	
				}
				
				depth = other.depth + 5;
		
				image_blend = scr_Mix_Two_Color_Arrays(particlecolor1, particlecolor2)

				size = partSize;
				image_xscale = size;
				image_yscale = size;
		
				life = partLife;
				alarm[0] = life;
			}	
		}
	}
}